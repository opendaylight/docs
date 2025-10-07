# Local Testing for OpenDaylight Docs

This repository includes infrastructure for testing documentation builds
locally using [act](https://github.com/nektos/act) before submitting changes
to Gerrit.

## Overview

The setup provides a hybrid GitHub Actions workflow that work:

- **Locally with act**: Runs only the documentation build and link checking
- **On GitHub/Gerrit**: Runs the full Gerrit verification workflow

## Prerequisites

1. **Docker**: Required for act to run containers
2. **act**: Install from [nektos/act releases](https://github.com/nektos/act/releases)

   ```bash
   # Example for Linux
   curl -s https://api.github.com/repos/nektos/act/releases/latest | \
     grep "browser_download_url.*linux_amd64" | cut -d '"' -f 4 | \
     xargs curl -L -o act && chmod +x act && sudo mv act /usr/local/bin/
   ```

## Quick Start

### Test Local Changes

Test your current working directory changes without submitting to Gerrit:

```bash
bash test-gerrit-local.sh --local-changes --job local-tox
```

### Test Specific Gerrit Change

Test a specific Gerrit change request:

```bash
bash test-gerrit-local.sh --gerrit-url "https://git.opendaylight.org/gerrit/c/docs/+/117503"
```

### Dry Run (Faster for Validation)

Add `--dry-run` to quickly validate the workflow without actually running the build:

```bash
bash test-gerrit-local.sh --local-changes --dry-run
```

## Configuration Files

### Core Files

- `.actrc` - Act configuration (Docker images, environment)
- `.env.local` - Local environment variables for act
- `.github/workflows/gerrit-verify.yaml` - Hybrid workflow
- `test-gerrit-local.sh` - Test script with URL parsing and event generation

### Generated Files

- `gerrit-verify-event.json` - Auto-generated workflow event payload

## Test Script Options

```bash
Usage: test-gerrit-local.sh [options]
  --job <name>              Run only a specific job.
  --gerrit-url <url>        Gerrit change URL
                            (e.g., https://git.opendaylight.org/gerrit/c/
                            docs/+/117503).
  --patchset-number <num>   Gerrit patchset number (default: 1).
  --branch <name>           Target branch (default master).
  --local-changes          Test current local changes instead of fetching
                           from Gerrit.
  --dry-run                 Pass -n to act.
  --verbose                 Echo act command.
  -h|--help                 This help.
```

## How It Works

### Local Testing Flow

1. **Script generates event JSON** with required workflow inputs
2. **Act runs workflow** using the `env.ACT='true'` environment variable
3. **Only local-tox job executes** - Gerrit jobs are skipped via conditionals
4. **Act copies your files** into docker container and runs:
   - Sphinx documentation build (`tox -e docs`)
   - Link checking (`tox -e docs-linkcheck`)

### Gerrit Integration Flow

1. **GitHub Actions triggers** on Gerrit events
2. **Full workflow executes** when `env.ACT != 'true'`
3. **Gerrit jobs run**: change info → tox verify → vote

### Key Features

- **Single workflow file** works both locally and on GitHub
- **Environment-based branching** using `env.ACT` detection
- **Minimal event JSON** with only required fields
- **Local file pickup** - tests uncommitted changes
- **Gerrit URL parsing** - auto-extracts change numbers and projects

## Troubleshooting

### Act Version Compatibility

Tested with act v0.2.80. Newer versions may have different YAML parsing behavior.

### Docker Permissions

Ensure your user can run Docker commands without sudo:

```bash
sudo usermod -aG docker $USER
# Logout and login again
```

### Missing Dependencies

If tox environments fail, ensure `docs/requirements.txt` is up to date.

### Workflow Parse Errors

- Check YAML indentation in `.github/workflows/gerrit-verify.yaml`
- Validate with: `act --list --workflows .github/workflows/gerrit-verify.yaml`

## Example Workflows

### Daily Development

```bash
# Make changes to docs
vim docs/some-file.rst

# Test locally before commit
bash test-gerrit-local.sh --local-changes

# If tests pass, commit and push to Gerrit
git add . && git commit -m "Update documentation" && git review
```

### Testing Specific Changes

```bash
# Test someone else's Gerrit change
bash test-gerrit-local.sh --gerrit-url "https://git.opendaylight.org/gerrit/c/docs/+/117503"

# Test different patchset
bash test-gerrit-local.sh --gerrit-url \
    "https://git.opendaylight.org/gerrit/c/docs/+/117503" --patchset-number 2
```

## Files Added/Modified

### New Files

- `.actrc` - Act runner configuration
- `.env.local` - Local environment variables
- `test-gerrit-local.sh` - Main test script
- `verify-setup.sh` - Environment validation script
- `.pre-commit-config.yaml` - Pre-commit hooks for code quality

### Modified Files

- `.github/workflows/gerrit-verify.yaml` - Enhanced with local testing support
- `docs/index.rst` - Test change (can be reverted)

This infrastructure enables rapid local testing and reduces the feedback loop
for documentation changes.
