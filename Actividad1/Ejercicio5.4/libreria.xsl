<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mi Biblioteca Personal</h1>
        <table>
            <!-- <tr bgcolor="red">
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>ISBN</th>
            </tr> -->
            <tr bgcolor="red">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
            </tr>
            <xsl:for-each select="libreria/libros">
            <tr>
                <!-- <xsl:choose>
                    <xsl:when test="precio = 10.50">
                        <td bgcolor="blue">
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td bgcolor="blue">
                            <xsl:value-of select="autor"/>
                        </td>
                        <td bgcolor="blue">
                            <xsl:value-of select="precio"/>
                        </td>
                        <td bgcolor="blue">
                            <xsl:value-of select="codLibro"/>
                        </td>
                    </xsl:when>
                    <xsl:when test="precio = 60.50">
                        <td bgcolor="blue">
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td bgcolor="blue">
                            <xsl:value-of select="autor"/>
                        </td>
                        <td bgcolor="blue">
                            <xsl:value-of select="precio"/>
                        </td>
                        <td bgcolor="blue">
                            <xsl:value-of select="codLibro"/>
                        </td>
                    </xsl:when> -->
                    <xsl:choose>
                    <xsl:when test="precio &gt; 25">
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
                    </xsl:when>
                    <xsl:when test="precio &lt; 25">
                        <td bgcolor="green">
                            <xsl:value-of select="codLibro"/>
                        </td>
                        <td bgcolor="green">
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td bgcolor="green">
                            <xsl:value-of select="autor"/>
                        </td>
                        <td bgcolor="green">
                            <xsl:value-of select="precio"/>
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
