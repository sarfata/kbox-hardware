#!/usr/bin/env python

import sys
from pcbnew import *

filename = sys.argv[1]
pcb = LoadBoard(filename)

# OSHPark annular ring minimum is 4 mils for 4 layer boards
# Advanced Circuits is 5 mils
minimumAnnularRing = 5

for item in pcb.GetTracks():
    if type(item) is VIA:
        drill = ToMils(item.GetDrillValue())
        width = ToMils(item.GetWidth())
        annular = (width - drill) / 2
        print " Via: %f mils / %f mils - Annular ring: %f"%(drill, width, annular)

        if annular < 5:
            print "Fixing via."
            item.SetWidth(FromMils(drill + minimumAnnularRing * 2))

pcb.Save("fixed-" + filename)

