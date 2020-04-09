<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match="Zone">

        <section class="qis-sommes-hello main-section">
            <div class="container">
                <xsl:apply-templates select="News" mode="Zone-News"></xsl:apply-templates>
            </div>
        </section>



        <section class="qis-commes-s2 main-section">
            <div class="container">
                <xsl:apply-templates select="News" mode="Zone-News2"></xsl:apply-templates>
            </div>
        </section>



        <section class="qis-commes-s3 main-section">
            <div class="container">
                <xsl:apply-templates select="News" mode="Zone-News3"></xsl:apply-templates>
            </div>
        </section>


    </xsl:template>
    <xsl:template match="News" mode="Zone-News">
        <xsl:if test="position() = 1">
            <h2 class="qis-title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </h2>
            <div class="img">
                <img class="lazyload blur-up">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Zone-News2">
        <xsl:if test="position() = 2">
            <h2 class="qis-title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </h2>
            <div class="row">
                <div class="col-md-5">
                    <div class="img">
                        <img class="lazyload blur-up">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div>
                </div>
                <div class="col-md-o-1"></div>
                <div class="col-md-6">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
            <div class="row">
                <div class="col-md-o-1"> </div>
                <div class="col-md-7">
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
                <div class="col-md-o-2"></div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Zone-News3">
        <xsl:if test="position() = 3">
            <h2 class="qis-title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </h2>
            <div class="wrapper">
                <div class="box-img">
                    <div class="img">
                        <img class="lazyload blur-up">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div>
                </div>
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>