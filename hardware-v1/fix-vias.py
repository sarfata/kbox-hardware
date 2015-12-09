#!/usr/bin/env python

import sys
from pcbnew import *

filename = sys.argv[1]
pcb = LoadBoard(filename)

# OSHPark annular ring minimum is 4 mils for 4 layer boards
# Advanced Circuits is 5 mils
minimumAnnularRing = 5
fixed = 0

for item in pcb.GetTracks():
    if type(item) is VIA:
        drill = ToMils(item.GetDrillValue())
        width = ToMils(item.GetWidth())
        annular = (width - drill) / 2
        print " Via: %f mils / %f mils - Annular ring: %f"%(drill, width, annular)

        if annular < 5:
            print "Fixing via."
            item.SetWidth(FromMils(drill + minimumAnnularRing * 2))
            fixed = fixed + 1

if fixed > 0:
    newfile = "fixed-" + filename
    pcb.Save(newfile)
    print "Fixed {} vias and saved PCB to new file: {}".format(fixed, newfile)
else:
    print "No need to fix anything. File unaltered."

