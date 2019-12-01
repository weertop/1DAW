<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
            </head>
            <body>
                <table align="center" border="3" style="background-color:magenta">
                    <tr>
                        <th colspan="5">Datos</th>
                    </tr>
                    <tr>
                        <th>Nombre Producto</th>
                        <th>Cantidad</th>
                        <th>Unidad</th>
                        <th>Nombre Distribuidor</th>
                        <th>DNI</th>
                    </tr>
					<xsl:apply-templates select="//cliente | //producto"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
			<td><xsl:value-of select="cantidad"/></td>
			<td><xsl:value-of select="cantidad[@unidad]"/></td>
			<td><xsl:value-of select="distribuidor"/></td>
        </tr>
    </xsl:template>
	<xsl:template match="cliente">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
			<td></td>
			<td></td>
			<td></td>
			<td><xsl:value-of select="dni"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>