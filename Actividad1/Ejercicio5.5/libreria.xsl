<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mi Biblioteca Personal</h1>
        <table>
            <tr bgcolor="red">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>Número de Páginas</th>
            </tr>
            <xsl:for-each select="libreria/libros">
            <tr>
            <xsl:choose>
                <xsl:when test="numPaginas &gt; 150">
                <td bgcolor="red">
                    <xsl:value-of select="codLibro"/>
                </td>
                <td bgcolor="red">
                    <xsl:value-of select="titulo"/>
                </td>
                <td bgcolor="red">
                    <xsl:value-of select="autor"/>
                </td>
                <td bgcolor="red">
                    <xsl:value-of select="precio"/>
                </td>
                <td bgcolor="red">
                    <xsl:value-of select="numPaginas"/>
                </td>
            </xsl:when>
            <xsl:when test="numPaginas &lt; 150">
                <td>
                    <xsl:value-of select="codLibro"/>
                </td>
                <td>
                    <xsl:value-of select="titulo"/>
                </td>
                <td>
                    <xsl:value-of select="autor"/>
                </td>
                <td>
                    <xsl:value-of select="precio"/>
                </td>
                <td>
                    <xsl:value-of select="numPaginas"/>
                </td>
            </xsl:when>
            </xsl:choose>
            </tr>
        </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
