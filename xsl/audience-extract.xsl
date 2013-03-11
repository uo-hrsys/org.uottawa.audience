<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  exclude-result-prefixes="xsl"
  version="2.0">
  
  <xsl:template match="/">
  	<xsl:message> +++ audience extraction starts</xsl:message>
  	<audiences>
   		<xsl:apply-templates select="map/topicmeta" mode="audience" />
   	</audiences>
  </xsl:template>
  
  <xsl:template match="*" mode="audience" />
  
  <xsl:template match="topicmeta" mode="audience" >
	<xsl:apply-templates select="*" mode="#current" />
  </xsl:template>
  
  <xsl:template match="audience" mode="audience" >
	<xsl:sequence select="." />
  </xsl:template>  
   
</xsl:stylesheet>