<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--xsl:output method ="html" indent = "yes" /> -->
<xsl:template match="/">
<html>
<body>
<h2>English Movie Collection</h2>
<table border="1">
<tr bgcolor="#eee6ff">
<th>Rating</th>
<th>Movie title</th>
<th>Runtime</th>
<th>Genre</th>
  <th>Studio</th>
  <th>Year</th>
<th>High-rated movie</th>
<th>Director - First Name</th>
 <th>Director - Last Name</th>

</tr>
<xsl:for-each select="Movies/Movie">
<tr>
  <td>
    <xsl:value-of select="@Rating"/>
  </td>
  <td>
    <xsl:value-of select="Title"/>
  </td>
  <td>
    <xsl:value-of select="Title/@Runtime"/>
  </td>
  <td>
    <xsl:value-of select="Genre"/>
  </td>
<td>
<xsl:value-of select="Studio"/>
</td>
  <td>
    <xsl:value-of select="Year"/>
  </td>
  <xsl:for-each select="Director/Name">
    <td>
      <xsl:value-of select="@High-ratedmovie"/>
    </td>
    <td>
      <xsl:value-of select="First"/>
    </td>
    <td>
      <xsl:value-of select="Last"/>
    </td>
    <tr></tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>

  </xsl:for-each>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>