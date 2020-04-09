<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <section class="xvt-project-list main-section">
            <div class="container">
                <div class="main-title text-center">
                    <h2><xsl:value-of disable-output-escaping="yes" select="ZoneList/ZoneTitle"></xsl:value-of></h2>
                </div>
                <div class="main-project-list">
                    <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="item">
            <figure><a>
                    <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </a>
                    <div class="image">
                        <img class="lazyload blur-up">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div></a>
                <figcaption>
                    <div class="title"><a href="#">
                            <h3>Laos</h3></a></div>
                    <div class="brief-content">
                        <p>Le Laos, Ancien royaume du "Million d’éléphants" est un petit pays encadré par les géants que sont la Chine, le Vietnam et la Thaïlande. On y trouve peu d'infrastructures touristiques, ce qui en fait une destination pleine d'aventures : l'occasion d'une rencontre marquante avec une culture et une population très accueillante...</p>
                    </div>
                    <div class="detail"><a href="# ">Détails</a></div>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>