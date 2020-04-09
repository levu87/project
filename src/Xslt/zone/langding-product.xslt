<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="product-section">
            <div class="container">
                <div class="product-wrapper">
                    <div class="pro-buy">
                        <div class="head">
                            <h4>mua</h4>
                        </div>
                        <div class="item">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="ProductList/Product" mode="Product1"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro-donate">
                        <div class="head">
                            <h4>Chọn sản phẩm tặng kèm</h4>
                        </div>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="ProductList/Product" mode="Product2"></xsl:apply-templates>
                            </div>
                            <div class="swiper-btn-next"><em class="mdi mdi-chevron-right"></em></div>
                            <div class="swiper-btn-prev"><em class="mdi mdi-chevron-left"></em></div>
                        </div>
                    </div>
                    <div class="order-btn">
                     <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="https://www.muradvietnam.vn/giam-nam-trong-7-ngay-murad-rapid-age-spot-correcting-serum"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">đặt hàng ngay</xsl:text>
                    </a>
                    
                
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Product" mode="Product1">
        <xsl:if test="position() = 1">
            <div class="swiper-slide">
            <figure>
                <div class="figure-img">
                    <div class="img"> 
                        <img class="lazyload">
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div>
                    <div class="swiper-btn-next"><em class="mdi mdi-chevron-right"></em>
                    </div>
                    <div class="swiper-btn-prev"><em class="mdi mdi-chevron-left"></em>
                    </div>
                </div>
                <figcaption>
                    <div class="caption-top"><a class="title">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a><span class="sub-title"><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></span>
                    </div>
                    <div class="caption-bottom"><span class="price"><xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of>
                    <xsl:text disable-output-escaping="yes">₫</xsl:text>
                     </span></div>
                </figcaption>
            </figure>
        </div>
        </xsl:if>
        
    </xsl:template>
    <xsl:template match="Product" mode="Product2">
        <xsl:if test="position() = 2">
            <div class="swiper-slide">
            <div class="item">
                <figure>
                    <div class="img"> 
                        <img class="lazyload">
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <div class="caption-top"><a class="title">
                      
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </a><span class="sub-title"><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></span></div>
                        <div class="caption-bottom"><span class="price"><xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of><xsl:text disable-output-escaping="yes">₫</xsl:text> </span></div>
                    </figcaption>
                </figure>
            </div>
        </div>
        </xsl:if>
        
    </xsl:template>
</xsl:stylesheet>