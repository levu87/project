<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="xvt-newsletter main-section">
            <div class="container">
                <div class="main-title text-center">
                    <h2>
                        <xsl:value-of disable-output-escaping="yes" select="NewsList/ModuleTitle"></xsl:value-of>
                    </h2>
                </div>
                <div class="row newsletter-top">
                      <div class="col-lg-6 newsletter-big">
                    <xsl:apply-templates select="NewsList/News" mode="NewsBig"></xsl:apply-templates>
                    </div>
                    <div class="col-lg-6 newsletter-small">
                        <xsl:apply-templates select="NewsList/News" mode="NewsSide"></xsl:apply-templates>
                        
                    </div>
                </div>
                <div class="row newsletter-bottom">
                    <xsl:apply-templates select="NewsList/News" mode="NewsList"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="News" mode="NewsBig">
        <xsl:if test="position() = 1">
          
                <div class="item"><a>
              
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
           
                        <figure>
                            <div class="image">
                                <img class="lazyload blur-up">
                                <xsl:attribute name="data-src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                            <figcaption>
                                <div class="date"><em class="mdi mdi-calendar"></em>
                                    <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date>
                                </div>
                                <div class="title">
                                    <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                            </figcaption>
                        </figure>
                    </a></div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="NewsSide">
        <xsl:if test="position() &gt; 1 and position() &lt; 4">
            <div class="item"><a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <figure>
                    <div class="image">
                        <img class="lazyload blur-up">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <div class="date"><em class="mdi mdi-calendar"></em>
                            <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date>
                        </div>
                        <div class="title">
                            <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </figcaption>
                </figure>
            </a></div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="NewsList">
        <xsl:if test="position() &gt; 4">
            
        <div class="col-md-6 col-lg-3">
            <div class="item"><a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                    <figure>
                        <div class="image">
                            <img class="lazyload blur-up">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </div>
                        <figcaption>
                            <div class="date"><em class="mdi mdi-calendar"></em>
                                <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date>
                            </div>
                            <div class="title">
                                <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <div class="brief-content">
                                <p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
                            </div>
                        </figcaption>
                    </figure>
                </a></div>
        </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>