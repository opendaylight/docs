#!/usr/bin/python

from __future__ import print_function
import datetime
import time
import json
import argparse

def parse_date(date_str):
    """Parse the date string using the date format %m/%d/%Y"""
    date_time = time.strptime(date_str, "%m/%d/%Y")
    return datetime.date(date_time.tm_year, date_time.tm_mon, date_time.tm_mday)

def add_weeks_respecting_holidays(date, weeks, holidays):
    """Adds a specified number of weeks to the specified date and adds an additional week for each
    specified holiday that occurs in the range."""
    new_date = date + datetime.timedelta(weeks=weeks)

    for holiday in holidays:
        if date < holiday and holiday <= new_date:
            print("*", end='') # this is a horrible hack to convey when holidays skip
            new_date += datetime.timedelta(weeks=1)

    return new_date

def print_schedule():
    """Parse a specified JSON config file and print an OpenDaylight release schedule based on it."""
    parser = argparse.ArgumentParser(description=
                                     "Produce OpenDaylight release schedules based on json config.")
    parser.add_argument("json", nargs="?", default="schedule.json", type=argparse.FileType('r'),
                        help="path to a JSON config file")

    args = parser.parse_args()
    config = json.load(args.json)
    # print(json.dumps(config))

    holidays = []
    for holiday in config["holidays"]:
        holidays.append(parse_date(holiday))
    holidays.sort()

    start_date = parse_date(config["start"])
    # print(start_date)

    curr_milestone_start = start_date

    for milestone in config["milestones"]:
        print(milestone + ":", end='')
        curr_offset = curr_milestone_start
        for offset in config["offsets"]:
            print("  " + str(offset) + ": " + str(curr_offset), end='')
            curr_offset = add_weeks_respecting_holidays(curr_offset, config["offset_in_weeks"],
                                                        holidays)
        print()
        curr_milestone_start = add_weeks_respecting_holidays(curr_milestone_start,
                                                             config["weeks_between_milestones"],
                                                             holidays)

print_schedule()
