# How to manufacture with macrofab

- Generate GERBER and Drill files normally
- Upload all files
- Generate BOM CSV with ./bom2csv.xsl
- Use script to replace values in kicad_pcb file with part numbers

    python ../macrofab-bom-in-pcbnew-values.py kbox.kicad_pcb kbox.csv
    kbox-macrofab.kicad_pcb

- Upload kicad_pcb file
- Remove DNP parts as well as VIA and graphics (make them do not populate)
- Replace components with the house parts equivalent where applicable
- Fix WS2812 orientation (will need to fix the footprint)
- Fix SDCard orientation (will need to fix the footprint)
