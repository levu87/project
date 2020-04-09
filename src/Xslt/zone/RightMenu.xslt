<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />
  <xsl:template match="/">
    <ul class="menu-right">
        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
      </ul>
  </xsl:template>
  <xsl:template match="Zone">
    <li>
      <xsl:choose>
        <xsl:when test="count(Zone)>0">
          <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
              <xsl:text>has-sub active</xsl:text>
            </xsl:attribute>
          </xsl:if>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="target">
          <xsl:value-of select="Target"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        <xsl:text> </xsl:text>
      </a>
    </li>
  </xsl:template>
</xsl:stylesheet>