<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Biblioteca personal de Airam Linares</h1>
        <table border="1">
            <tr bgcolor="gray">
                <th>Album</th>
                <th>Artista</th>
                <th>Canciones</th>
                <th>Sello discográfico</th>
                <th>Año de publicación</th>
            </tr>
            <xsl:for-each select="cds/cd">
                <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="artista"/></td>
                    <td>
                        <xsl:for-each select="cancion">
                            <xsl:value-of select="."/>
                                <br/>
                        </xsl:for-each>
                    </td>
                    <td><xsl:value-of select="sello"/></td>
                    <td><xsl:value-of select="anyo"/></td>
                </tr>
            </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>