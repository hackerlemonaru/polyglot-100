<?xml version="1.0" encoding="UTF-8"?>
<!-- polyglot-100 :: entry 079 :: XSLT 2.0 -->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" />

  <xsl:function name="pg:fib" xmlns:pg="urn:polyglot-100">
    <xsl:param name="n" as="xs:integer"
               xmlns:xs="http://www.w3.org/2001/XMLSchema" />
    <xsl:sequence select="pg:fib-loop($n, 0, 1)" />
  </xsl:function>

  <xsl:function name="pg:fib-loop" xmlns:pg="urn:polyglot-100">
    <xsl:param name="n" /><xsl:param name="a" /><xsl:param name="b" />
    <xsl:sequence select="if ($n eq 0) then $a
                          else pg:fib-loop($n - 1, $b, $a + $b)" />
  </xsl:function>

  <xsl:template match="/">
    <xsl:text>Hello from XSLT!&#10;</xsl:text>
    <xsl:text>sum(1..10) = </xsl:text>
    <xsl:value-of select="sum(1 to 10)" /><xsl:text>&#10;</xsl:text>
    <xsl:text>fib(10)    = </xsl:text>
    <xsl:value-of select="pg:fib(10)" xmlns:pg="urn:polyglot-100" />
    <xsl:text>&#10;</xsl:text>
  </xsl:template>
</xsl:stylesheet>
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the polyglot-100 archive. Family: Markup -->
<!-- XSLT -- entry 079 of 100 in the p -->
