<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <body>
        <h1>Ejemplo plantilla</h1>
        <xsl:apply-templates/>
    </body>
</html>
</xsl:template>

<xsl:template match="libreria">
    <h2>Mi Biblioteca Personal</h2>
        <table>
            <tr bgcolor="#887788">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>Número de Páginas</th>
            </tr>
            <xsl:apply-templates select="libros"/>  
        </table>
</xsl:template>

<xsl:template match="libros">
    <tr>
        <td><xsl:value-of select="codLibro"/></td>
        <td><xsl:value-of select="titulo"/></td>
        <td><xsl:value-of select="autor"/></td>
        <td><xsl:value-of select="precio"/></td>
        <xsl:choose>
            <xsl:when test="numPaginas &gt; 150">
                <xsl:apply-templates select="numPaginas"/>
            </xsl:when>
            <xsl:otherwise>
                <td><xsl:value-of select="numPaginas"/></td>
            </xsl:otherwise>
        </xsl:choose>
    </tr>
</xsl:template>

<xsl:template match="numPaginas">
    <td bgcolor="red"><xsl:value-of select="."/></td>
</xsl:template>

</xsl:stylesheet>
