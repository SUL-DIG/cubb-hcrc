<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
        <xsl:template match="field[@name='author']">
        <field name="author">
        <xsl:value-of select="."/>
        </field>
        <field name="author_nat">
            <xsl:variable name="elValue" select="."/>
            <xsl:analyze-string select="$elValue" regex="\s*(.*)\s*,\s(.*)">
                <xsl:matching-substring>
                <xsl:value-of select="regex-group(2)"/><space/><xsl:value-of select="regex-group(1)"/>
                </xsl:matching-substring>
            </xsl:analyze-string>
        </field>
        </xsl:template>
</xsl:stylesheet>