<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="discos.css"/>
      </head>
      <body>
        <h1>Tienda de discos</h1>
        <p>Grandes éxitos de la 2da mitad del S.XX</p>
        <br/><br/>
        <table>
          <tr>
            <th>Nombre del disco</th>
            <th>Grupo</th>
            <th>Año</th>
            <th>Discografia</th>
            <th>Formato</th>
          </tr>
          <xsl:for-each select="/tienda/disco[año&lt;1979]">
            <tr>
              <td><xsl:value-of select="nombre_disco"/></td>
              <td><xsl:value-of select="grupo"/></td>
              <td><xsl:value-of select="año"/></td>
              <td><xsl:value-of select="discografia"/></td>
              <td><xsl:value-of select="formato"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
