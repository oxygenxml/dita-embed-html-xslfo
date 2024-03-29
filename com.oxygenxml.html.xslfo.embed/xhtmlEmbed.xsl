<?xml version="1.0" encoding="UTF-8"?>
<!--
    
Oxygen Embed HTML plugin
Copyright (c) 1998-2022 Syncro Soft SRL, Romania.  All rights reserved.
Licensed under the terms stated in the license file LICENSE 
available in the base directory of this plugin.

-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    xmlns:saxon="http://saxon.sf.net/"
  >
  <xsl:template match="*[contains(@class, ' topic/foreign ')][contains(@outputclass, 'html-embed')]" priority="10">
    <xsl:copy-of select="parse-xml(concat('&lt;root>', text(), '&lt;/root>'))/*/node()" use-when="not(function-available('saxon:parse'))"/>
    <xsl:copy-of select="saxon:parse(concat('&lt;root>', text(), '&lt;/root>'))/*/node()" use-when="function-available('saxon:parse')"/>
  </xsl:template>
</xsl:stylesheet>