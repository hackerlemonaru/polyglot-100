"""Family 08 -- Markup & Style."""

FAMILY = "Markup & Style"

LANGS = [
    dict(
        name="HTML", ext=".html", comment="angle", year=1993, author="Tim Berners-Lee",
        paradigm="Declarative markup",
        note="The document language of the web; the living standard is maintained by WHATWG.",
        code=r'''<!DOCTYPE html>
<!-- polyglot-100 :: entry 071 :: HTML -->
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>polyglot-100 :: HTML</title>
  </head>
  <body>
    <main>
      <h1>Hello from HTML!</h1>
      <dl>
        <dt>sum(1..10)</dt>
        <dd><output id="sum">55</output></dd>
        <dt>fib(10)</dt>
        <dd><output id="fib">55</output></dd>
      </dl>
      <p>Entry 071 of 100. Both answers are 55.</p>
    </main>
  </body>
</html>
''',
    ),
    dict(
        name="CSS", ext=".css", comment="cstyle", year=1996,
        author="Håkon Wium Lie, Bert Bos",
        paradigm="Declarative style sheet, cascade",
        note="Custom properties and calc() made the cascade genuinely programmable.",
        code=r'''/* polyglot-100 :: entry 072 :: CSS */
:root {
  --entries: 100;
  --share: calc(100% / var(--entries));
  --checksum: 55;
  --ink: oklch(22% 0.02 260);
  --paper: oklch(98% 0.01 90);
}

.language-bar {
  display: grid;
  grid-template-columns: repeat(var(--entries), var(--share));
  block-size: 0.75rem;
  border-radius: 999px;
  overflow: hidden;
}

.language-bar > span {
  inline-size: var(--share);
  background: hsl(calc(var(--i) * 3.6) 70% 55%);
}

body {
  color: var(--ink);
  background: var(--paper);
  font-family: ui-monospace, monospace;
}

@media (prefers-reduced-motion: no-preference) {
  .language-bar > span { transition: inline-size 200ms ease; }
}
''',
    ),
    dict(
        name="SCSS", ext=".scss", comment="slash", year=2006,
        author="Hampton Catlin, Natalie Weizenbaum, Chris Eppstein",
        paradigm="Style sheet preprocessor",
        note="Sass with CSS-compatible syntax; loops generate all one hundred slices.",
        code=r'''// polyglot-100 :: entry 073 :: SCSS
$entries: 100;
$share: calc(100% / $entries);
$checksum: 55;

@mixin swatch($index) {
  background: hsl($index * 3.6, 70%, 55%);
  inline-size: $share;
}

.language-bar {
  display: flex;
  block-size: 0.75rem;

  @for $i from 1 through $entries {
    > span:nth-child(#{$i}) {
      @include swatch($i);
    }
  }
}

.checksum::after {
  content: "#{$checksum}";
  font-variant-numeric: tabular-nums;
}

%visually-hidden {
  position: absolute;
  clip-path: inset(50%);
}

.sr-only { @extend %visually-hidden; }
''',
    ),
    dict(
        name="Less", ext=".less", comment="slash", year=2009, author="Alexis Sellier",
        paradigm="Style sheet preprocessor",
        note="Variables, mixins and guarded recursion in a CSS-shaped syntax.",
        code=r'''// polyglot-100 :: entry 074 :: Less
@entries: 100;
@share: (100% / @entries);
@checksum: 55;

.swatch(@i) when (@i > 0) {
  .swatch(@i - 1);
  .language-bar > span:nth-child(@{i}) {
    background: hsl(@i * 3.6, 70%, 55%);
    inline-size: @share;
  }
}

.language-bar {
  display: flex;
  block-size: 0.75rem;
  border-radius: 999px;
  .swatch(@entries);
}

.checksum {
  &::after { content: "@{checksum}"; }
  &--ok { color: green; }
}

.visually-hidden() {
  position: absolute;
  clip-path: inset(50%);
}

.sr-only { .visually-hidden(); }
''',
    ),
    dict(
        name="Sass", ext=".sass", comment="slash", year=2006, author="Hampton Catlin, Natalie Weizenbaum",
        paradigm="Indented style sheet preprocessor",
        note="The original Sass syntax: no braces, no semicolons, indentation is structure.",
        code=r'''// polyglot-100 :: entry 075 :: Sass (indented syntax)
$entries: 100
$share: calc(100% / $entries)
$checksum: 55

=swatch($i)
  background: hsl($i * 3.6, 70%, 55%)
  inline-size: $share

.language-bar
  display: flex
  block-size: 0.75rem
  border-radius: 999px

  @for $i from 1 through $entries
    > span:nth-child(#{$i})
      +swatch($i)

.checksum
  font-variant-numeric: tabular-nums

  &::after
    content: "#{$checksum}"

.sr-only
  position: absolute
  clip-path: inset(50%)
''',
    ),
    dict(
        name="Vue", ext=".vue", comment="angle", year=2014, author="Evan You",
        paradigm="Reactive single-file component",
        note="Template, script and style live in one file; the composition API uses plain functions.",
        code=r'''<!-- polyglot-100 :: entry 076 :: Vue single-file component -->
<script setup>
import { computed, ref } from 'vue'

const entries = ref(100)
const sum = computed(() =>
  Array.from({ length: 10 }, (_, i) => i + 1).reduce((a, b) => a + b, 0)
)

function fib(n) {
  let [a, b] = [0, 1]
  for (let i = 0; i < n; i++) [a, b] = [b, a + b]
  return a
}

const fibTen = computed(() => fib(10))
const share = computed(() => `${100 / entries.value}%`)
</script>

<template>
  <section>
    <h1>Hello from Vue!</h1>
    <p>sum(1..10) = {{ sum }}</p>
    <p>fib(10) = {{ fibTen }}</p>
    <div class="bar" :style="{ '--share': share }" />
  </section>
</template>

<style scoped>
.bar { block-size: 0.75rem; inline-size: var(--share); }
</style>
''',
    ),
    dict(
        name="Svelte", ext=".svelte", comment="angle", year=2016, author="Rich Harris",
        paradigm="Compiled reactive component",
        note="The compiler emits imperative DOM updates, so there is no virtual DOM at runtime.",
        code=r'''<!-- polyglot-100 :: entry 077 :: Svelte component -->
<script>
  const entries = 100;
  const sum = Array.from({ length: 10 }, (_, i) => i + 1)
    .reduce((a, b) => a + b, 0);

  function fib(n) {
    let a = 0, b = 1;
    for (let i = 0; i < n; i++) [a, b] = [b, a + b];
    return a;
  }

  const fibTen = fib(10);
  $: share = 100 / entries;
</script>

<h1>Hello from Svelte!</h1>
<p>sum(1..10) = {sum}</p>
<p>fib(10) = {fibTen}</p>

<div class="bar">
  {#each Array(entries) as _, i}
    <span style="width:{share}%; background:hsl({i * 3.6} 70% 55%)"></span>
  {/each}
</div>

<style>
  .bar { display: flex; height: 0.75rem; }
</style>
''',
    ),
    dict(
        name="XML", ext=".xml", comment="angle", year=1998, author="W3C XML Working Group",
        paradigm="Extensible markup, tree-structured data",
        note="A strict subset of SGML that became the substrate for a hundred other formats.",
        code=r'''<?xml version="1.0" encoding="UTF-8"?>
<!-- polyglot-100 :: entry 078 :: XML -->
<archive name="polyglot-100" entries="100" bytesPerEntry="4096">
  <canonicalTask>
    <greeting>Hello from XML!</greeting>
    <operation id="sum" from="1" to="10">55</operation>
    <operation id="fib" index="10">55</operation>
    <checksum equal="true">0</checksum>
  </canonicalTask>
  <entry index="78" family="Markup &amp; Style">
    <language firstAppeared="1998">XML</language>
    <share unit="percent">1.00</share>
  </entry>
  <namespaces>
    <namespace prefix="pg" uri="urn:polyglot-100:entry" />
  </namespaces>
</archive>
''',
    ),
    dict(
        name="XSLT", ext=".xsl", comment="angle", year=1998, author="James Clark / W3C",
        paradigm="Declarative, template-driven transformation",
        note="A Turing-complete functional language for rewriting XML trees.",
        code=r'''<?xml version="1.0" encoding="UTF-8"?>
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
''',
    ),
    dict(
        name="TeX", ext=".tex", comment="percent", year=1978, author="Donald Knuth",
        paradigm="Macro expansion, typesetting",
        note="Knuth froze the feature set and now pays a bounty for every bug found.",
        code=r'''% polyglot-100 :: entry 080 :: TeX / LaTeX
\documentclass[11pt]{article}
\usepackage[T1]{fontenc}
\usepackage{amsmath}

\newcount\pgi
\newcount\pgtotal
\newcount\pga
\newcount\pgb
\newcount\pgt

\pgtotal=0
\pgi=1
\loop\ifnum\pgi<11
  \advance\pgtotal by \pgi
  \advance\pgi by 1
\repeat

\pga=0 \pgb=1 \pgi=0
\loop\ifnum\pgi<10
  \pgt=\pga \advance\pgt by \pgb
  \pga=\pgb \pgb=\pgt
  \advance\pgi by 1
\repeat

\begin{document}
\section*{Hello from \TeX!}
Entry 080 of the polyglot-100 archive.
\[
  \sum_{i=1}^{10} i = \the\pgtotal
  \qquad F_{10} = \the\pga
\]
Both evaluate to 55, which is the checksum for every entry in this archive.
\end{document}
''',
    ),
]
