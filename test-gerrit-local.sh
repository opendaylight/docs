#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$SCRIPT_DIR"
WORKFLOWS_DIR="$REPO_ROOT/.github/workflows"
EVENT_JSON="$REPO_ROOT/gerrit-verify-event.json"
TARGET_WORKFLOW_REL=".github/workflows/gerrit-verify.yaml"
JOB=""
GERRIT_URL=""
PATCHSET_NUMBER="latest"
BRANCH="master"
DRY_RUN=false
VERBOSE=false
LOCAL_CHANGES=false
usage(){ cat <<EOF
Usage: $0 [options]
  --job <name>              Run only a specific job.
  --gerrit-url <url>        Gerrit change URL (e.g., https://git.opendaylight.org/gerrit/c/docs/+/117503).
  --patchset-number <num>   Gerrit patchset number (default: latest).
  --branch <name>           Target branch (default master).
  --local-changes          Test current local changes instead of fetching from Gerrit.
  --dry-run                 Pass -n to act.
  --verbose                 Echo act command.
  -h|--help                 This help.
EOF
}
while [[ $# -gt 0 ]]; do case "$1" in
  --job) JOB="$2"; shift 2;;
  --gerrit-url) GERRIT_URL="$2"; shift 2;;
  --patchset-number) PATCHSET_NUMBER="$2"; shift 2;;
  --branch) BRANCH="$2"; shift 2;;
  --local-changes) LOCAL_CHANGES=true; shift;;
  --dry-run) DRY_RUN=true; shift;;
  --verbose) VERBOSE=true; shift;;
  -h|--help) usage; exit 0;;
  *) echo "Unknown arg $1" >&2; usage; exit 1;; esac; done

# Function to extract change number from Gerrit URL
extract_change_number() {
    local url="$1"
    # Extract change number from URLs like:
    # https://git.opendaylight.org/gerrit/c/docs/+/117503
    # https://git.opendaylight.org/gerrit/c/docs/+/117503/1
    echo "$url" | grep -oE '/[0-9]+(/[0-9]+)?$' | grep -oE '[0-9]+' | head -1
}

# Function to get latest patchset number for a change
get_latest_patchset() {
    local change_number="$1"
    local gerrit_host="git.opendaylight.org"
    # Query Gerrit REST API to get change info with detailed revisions
    local api_url="https://${gerrit_host}/gerrit/changes/${change_number}?o=ALL_REVISIONS"
    
    if command -v curl >/dev/null 2>&1 && command -v jq >/dev/null 2>&1; then
        local patchset
        patchset=$(curl -s "${api_url}" 2>/dev/null | sed '1d' | jq -r '
            .revisions | 
            to_entries | 
            max_by(.value._number) | 
            .value._number
        ' 2>/dev/null)
        
        if [[ -n "$patchset" ]] && [[ "$patchset" != "null" ]] && [[ "$patchset" =~ ^[0-9]+$ ]]; then
            echo "$patchset"
            return 0
        fi
    fi
    
    # Fallback to patchset 1 if API query fails
    echo "1"
}

# Parse Gerrit URL or generate synthetic data
if [[ -n "$GERRIT_URL" ]]; then
    CHANGE_NUMBER=$(extract_change_number "$GERRIT_URL")
    if [[ -z "$CHANGE_NUMBER" ]]; then
        echo "Error: Could not extract change number from URL: $GERRIT_URL" >&2
        exit 1
    fi
    # Extract project from URL (e.g., docs)
    GERRIT_PROJECT=$(echo "$GERRIT_URL" | sed -n 's|.*/gerrit/c/\([^/]*\)/.*|\1|p')
    [[ -z "$GERRIT_PROJECT" ]] && GERRIT_PROJECT="docs"
    
    # Resolve latest patchset if needed
    if [[ "$PATCHSET_NUMBER" == "latest" ]]; then
        echo "Fetching latest patchset for change $CHANGE_NUMBER..." >&2
        PATCHSET_NUMBER=$(get_latest_patchset "$CHANGE_NUMBER")
        echo "Using patchset $PATCHSET_NUMBER" >&2
    fi
else
    # Generate synthetic data if no URL provided
    CHANGE_NUMBER="$(shuf -i 1000-9999 -n1)"
    GERRIT_URL="https://git.opendaylight.org/gerrit/c/docs/+/$CHANGE_NUMBER"
    GERRIT_PROJECT="docs"
    # For synthetic data, use patchset 1
    [[ "$PATCHSET_NUMBER" == "latest" ]] && PATCHSET_NUMBER="1"
fi

rand_hex(){ head -c16 /dev/urandom | sha1sum | cut -c1-40; }

# Set up event data
CHANGE_ID="I$(rand_hex)"
REVISION="$(rand_hex)"
REFSPEC="refs/changes/${CHANGE_NUMBER: -2}/$CHANGE_NUMBER/$PATCHSET_NUMBER"

# For local changes, use current HEAD instead of Gerrit refspec
if [[ "$LOCAL_CHANGES" == "true" ]]; then
    REF="refs/heads/$BRANCH"
    echo "Testing local changes on branch $BRANCH"
else
    REF="$REFSPEC"
    echo "Testing Gerrit change $CHANGE_NUMBER patchset $PATCHSET_NUMBER"
fi
cat > "$EVENT_JSON" <<JSON
{
  "ref": "$REF",
  "inputs": {
    "GERRIT_CHANGE_URL": "$GERRIT_URL",
    "GERRIT_PATCHSET_NUMBER": "$PATCHSET_NUMBER"
  }
}
JSON
WORKFLOW_PATH="$REPO_ROOT/$TARGET_WORKFLOW_REL"
[[ -f "$WORKFLOW_PATH" ]] || { echo "Workflow not found: $WORKFLOW_PATH" >&2; exit 2; }
CMD=(act --workflows "$WORKFLOW_PATH" --eventpath "$EVENT_JSON" workflow_dispatch)
[[ -n "$JOB" ]] && CMD+=(--job "$JOB")
$DRY_RUN && CMD+=(-n)
$VERBOSE && echo "Running: ${CMD[*]}" >&2
"${CMD[@]}"
