<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match='/'>
  <html>
      <head>
          <title>Notas XSL</title>
      </head>
      <body>
        <h1 style="text-align:center">Listado de Notas y Estadisticas</h1>
          <table border="4" align="center" style="text-align:center">
              <tr style="background-color:lightblue">
                  <th colspan="3">Alumno</th>
                  <th colspan="3">Notas</th>
              </tr>
              <tr style="background-color:lightblue">
                  <th>Nombre</th>
                  <th>Apellidos</th>
                  <th>Matricula</th>
                  <th>Teoria</th>
                  <th>Practica</th>
                  <th>Final</th>
              </tr>
               <xsl:for-each select="/notas/alumno">
              <tr style="background-color:yellow">
                      <td><xsl:value-of select="nombre"/></td>
                      <td><xsl:value-of select="apellidos"/></td>
                      <td><xsl:value-of select="num-matricula"/></td>
                      <td><xsl:value-of select="nota-teoria"/></td>
                      <td><xsl:value-of select="nota-practica"/></td>
                      <td>
                            <xsl:choose>
                                <xsl:when test="nota-final >= 9"><b>Sobresaliente</b></xsl:when>
                                <xsl:when test="nota-final >= 7"><b>Notable</b></xsl:when>
                                <xsl:when test="nota-final >= 6"><b>Bien</b></xsl:when>
                                <xsl:when test="nota-final >= 5"><b>Suficiente</b></xsl:when>
                            </xsl:choose>
                    </td>
              </tr>
              </xsl:for-each>
          </table>
      </body>
  </html>
</xsl:template>
</xsl:stylesheet>
