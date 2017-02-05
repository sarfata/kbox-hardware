# How to manufacture with macrofab

- Generate GERBER and Drill files normally
- Upload all files
- Generate BOM CSV with ./bom2csv.xsl
- Use script to replace values in kicad_pcb file with part numbers

    python ../macrofab-bom-in-pcbnew-values.py ../kbox.kicad_pcb ../kbox.csv
    kbox-macrofab.kicad_pcb --substitute ../bom-substitutions.csv

- Upload kicad_pcb file
- Remove DNP parts as well as VIA and graphics (make them do not populate)
  They should all have the value DNP and be pre-selected.
- Make P1,P2,P3,P6 DNP
- Manually fix inventory parts (need to re-input their value and select
  inventory)

