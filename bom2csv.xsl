<!--XSL style sheet to convert EESCHEMA XML Partlist Format to CSV BOM Format
    Copyright (C) 2013, Stefan Helmert.
    GPL v2.

    Functionality:
        Generation of csv table with table head of all existing field names
        and correct assigned cell entries

    How to use this is explained in eeschema.pdf chapter 14.  You enter a command line into the
    netlist exporter using a new (custom) tab in the netlist export dialog.  The command is
    similar to
        on Windows:
            xsltproc -o "%O.csv" "C:\Program Files (x86)\KiCad\bin\plugins\bom2csv.xsl" "%I"
        on Linux:
            xsltproc -o "%O.csv" /usr/local/lib/kicad/plugins/bom2csv.xsl "%I"

    Instead of "%O.csv" you can alternatively use "%O" if you will supply your own file extension when
    prompted in the UI.  The double quotes are there to account for the possibility of space(s)
    in the filename.
-->

<!--
    @package
    Generate a Tab delimited list (csv file type).
    One component per line
    Fields are
    Ref,Value, PartNumber
-->

<!DOCTYPE xsl:stylesheet [
  <!ENTITY nl  "&#xd;&#xa;">    <!--new line CR, LF, or LF, your choice -->
]>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    <!-- for table head and empty table fields-->
    <xsl:key name="headentr" match="field" use="@name"/>

    <!-- main part -->
    <xsl:template match="/export">
        <xsl:text>Reference, Value, PartNumber&nl;</xsl:text>

        <!-- all table entries -->
        <xsl:apply-templates select="components/comp"/>
    </xsl:template>

    <!-- the table entries -->
    <xsl:template match="components/comp">
        <xsl:text>"</xsl:text>
        <xsl:value-of select="@ref"/><xsl:text>","</xsl:text>
        <xsl:value-of select="value"/><xsl:text>","</xsl:text>
        <xsl:value-of select="fields/field[@name='PartNumber']"/><xsl:text>"</xsl:text>
        <xsl:text>&nl;</xsl:text>
    </xsl:template>

 </xsl:stylesheet>
