<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Biblioteca personal de Airam Linares</h1>
        <table border="1">
            <tr bgcolor="gray">
                <th>Sello discográfico</th>
                <th>Album</th>
                <th>Canciones</th>
            </tr>
            <xsl:for-each select="cds/cd[sello='La Tanda Music']">
                <tr>
                    <td><xsl:value-of select="sello"/></td>
                    <td><xsl:value-of select="titulo"/></td>
                    <td>
                        <xsl:for-each select="cancion">
                            <xsl:value-of select="."/>
                                <br/>
                        </xsl:for-each>
                    </td>
                </tr>
            </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>