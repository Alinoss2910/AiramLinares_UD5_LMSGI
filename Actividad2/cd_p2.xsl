<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<!-- Elegir un artista cualquiera y mostrar una tabla con todas las canciones de ese artista. -->

<html>
    <body>
        <h1>Biblioteca personal de Airam Linares</h1>
        <table border="1">
            <tr bgcolor="grey">
                <th>Título</th>
                <th>Artista</th>
                <th>Sello</th>
                <th>Año</th>
                <th>Canciones</th>
            </tr>           
            <xsl:for-each select="cds/cd[artista='Swan Fyahbwoy']">
            <tr>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="artista"/></td>
                <td><xsl:value-of select="sello"/></td>
                <td><xsl:value-of select="anyo"/></td>
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