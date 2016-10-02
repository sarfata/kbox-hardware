# How to manufacture with macrofab

- Generate GERBER and Drill files normally
- Upload all files
- Upload kicad_pcb file (for XYRS)
- Download XYRS file from the "Bill of materials" tab (at top of page)
- Generate BOM CSV
- Run script to extend xyrs file with bom data

    python ../macrofab-add-bom-to-xyrs.py macrofab.xyrs kbox.csv kbox.xyrs

- Re-upload xyrs file
- Remove DNP parts as well as VIA and graphics (make them do not populate)
