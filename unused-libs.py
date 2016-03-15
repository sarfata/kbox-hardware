#!/usr/bin/env python

import sys
from pcbnew import *

filename = sys.argv[1]
pcb = LoadBoard(filename)

# OSHPark annular ring minimum is 4 mils for 4 layer boards
# Advanced Circuits is 5 mils
minimumAnnularRing = 5
fixed = 0

libs = {}

for m in pcb.GetModules():
    #print "Reference: {}".format(m.GetReference());
    #print "Value: {}".format(m.GetValue());
    #print "Path: {}".format(m.GetPath())
    lib = str(m.GetFPID().GetLibNickname())
    footprint = str(m.GetFPID().GetFootprintName())
    #print "Lib: {} - Footprint: {}".format(lib, footprint)

    if lib not in libs:
        libs[lib] = { footprint: 1 }
    elif footprint in libs[lib]:
        libs[lib][footprint] = libs[lib][footprint] + 1
    else:
        libs[lib][footprint] = 1

for l in libs.keys():
    for f in libs[l].keys():
        print "{}/{} used {} times".format(l, f, libs[l][f])


