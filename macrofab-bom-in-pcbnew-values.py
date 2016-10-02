#!/usr/bin/python

import argparse
import re
import pandas

def update_kicad_values(input, bom, output):
    reference = None
    bomdf = pandas.read_csv(bom)

    for line in input:
        m = re.search("fp_text reference ([A-Z0-9]+)", line)
        if m:
            reference = m.group(1)

        m = re.search("fp_text value (.*) \(", line)
        if m:
            value = m.group(1)
            mpn = bomdf[bomdf["Reference"] == reference][' PartNumber']
            if len(mpn) > 0 and not pandas.isnull(mpn).values[0]:
                mpn = mpn.values[0]
                print("{} ==> '{}' --> {}".format(reference, value, mpn))
                line = line.replace(value, mpn)
            else:
                print("No MPN in BOM for {} ({})".format(reference, value))

        output.write(line)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('input', type = argparse.FileType("r"))
    parser.add_argument('bom', type = argparse.FileType("r"))
    parser.add_argument('output', type = argparse.FileType("w"))

    args = parser.parse_args()

    update_kicad_values(args.input, args.bom, args.output)


if __name__ == '__main__':
    main()
