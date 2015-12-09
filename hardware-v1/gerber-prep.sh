#!/bin/sh

echo "Preparing files for OSHPARK"

mv bb1-Ground.Plane.g2 bb1-Ground.Plane.g2l
mv bb1-Power.g3 bb1-Power.g3l
gerbv -x drill -o bb1-combined-drills.drl bb1.drl bb1-NPTH.drl
rm bb1.drl bb1-NPTH.drl

zip gerber.zip bb1-B.Cu.gbl bb1-B.Mask.gbs bb1-B.SilkS.gbo bb1-combined-drills.drl bb1-Edge.Cuts.gm1 bb1-F.Cu.gtl bb1-F.Mask.gts bb1-F.SilkS.gto bb1-Ground.Plane.g2l bb1-Power.g3l bb1-F.Paste.gtp
