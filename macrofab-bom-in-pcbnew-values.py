#!/usr/bin/python

import argparse
import re
import pandas

def update_kicad_values(input, bom, output, substitutes = None):
    reference = None
    bomdf = pandas.read_csv(bom)

    subdf = pandas.DataFrame()
    if substitutes is not None:
        subdf = pandas.read_csv(substitutes)

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

                substitute = subdf[subdf["PartNumber"] == mpn]['Substitute']
                if len(substitute) > 0 and not pandas.isnull(substitute).values[0]:
                    substitute = substitute.values[0]
                    print("{} ==> '{}' --> {} substituted by {}".format(reference, value, mpn, substitute))
                    mpn = substitute
                else:
                    print("{} ==> '{}' --> {}".format(reference, value, mpn))

                line = line.replace(value, mpn)
            else:
                print("No MPN in BOM for {} ({})".format(reference, value))
                line = line.replace(value, "DNP")
            # Some fp_text value lines include "hide" which gets pushed to the BOM - Remove hide
            line = line.replace("hide", "")

        output.write(line)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('input', type = argparse.FileType("r"))
    parser.add_argument('bom', type = argparse.FileType("r"))
    parser.add_argument('output', type = argparse.FileType("w"))
    parser.add_argument('--substitute-parts', type = argparse.FileType("r"))

    args = parser.parse_args()

    update_kicad_values(args.input, args.bom, args.output, args.substitute_parts)


if __name__ == '__main__':
    main()
