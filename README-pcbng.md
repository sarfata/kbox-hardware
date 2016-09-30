# How to manufacture via pcb.ng

 - Generated gerber files via the standard KiCad export gerber window
 - Upload all the files as one zip - Everything should be automatically
   recognized
 - Generated drill like usual (one file only for pcbng so check the option to
   merge plated and non-plated holes)
 - Generate the 'XYRS' file from pcbnew in CSV format
 - Upload it
 - Generate the BOM from eeschema in XML and then run it from bom2csv.xslt in
   this project

       xsltproc -o "%O.csv" /usr/local/lib/kicad/plugins/bom2csv.xsl "%I"

   This will export only Reference, Value, PartNumber

 - Upload the bom

