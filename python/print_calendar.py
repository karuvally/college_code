#!/usr/bin/env python3
# print calendar

# serious stuff
import calendar

# variables
year = int(input("year> "))
month = int(input("month> "))

object = calendar.TextCalendar(calendar.SUNDAY)
calendar_output = object.prmonth(2018, 1)
