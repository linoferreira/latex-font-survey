# Survey of free fonts for use with LaTeX

*This repository contains samples of a few of my favourite free fonts for use with LaTeX systems.*

#### Table of Contents
[Introduction](#introduction)  
[Fonts](#fonts)  
&nbsp;&nbsp; [Bembo](#bembo)  
&nbsp;&nbsp; [Palatino](#palatino)  
&nbsp;&nbsp; [Crimson](#crimson)  
&nbsp;&nbsp; [Libertine](#libertine)  
&nbsp;&nbsp; [STIX](#stix)  
&nbsp;&nbsp; [Charter](#charter)  
&nbsp;&nbsp; [Utopia](#utopia)  
[Sample text](#sample-text)  
[Setup](#setup)  


## Introduction

TeX and related systems are often associated with their default fonts, Donald Knuth's [Computer Modern](https://en.wikipedia.org/wiki/Computer_Modern) (CM) typefaces. While these fonts are excellent, they have become so ubiquitous in the scientific community that many LaTeX users have sought alternative fonts for their documents. As a result, a plethora of font packages and even OpenType-compatible engines (XeLaTeX and LuaLaTeX) have emerged in the past 20 years.

A few months ago, I set out to explore this extensive set of LaTeX font options. My goal was to select a small group of high-quality free fonts which I could later choose from when typesetting different documents. As I moved forward with my search, I also became interested in the history, character and rationale behind the design of different fonts and this led me to write some descriptive notes on each of my favourites.

This README file contains these notes. In the paragraphs below, I list and give a brief description of seven fonts which I personally like (where the original fonts are commercial, I focus on free alternatives). These are: Bembo, Palatino, Crimson, Libertine, STIX, Charter and Utopia. I also provide a small sample of each font (containing both text and maths) so that the different choices can be easily assessed and compared. Longer samples for each font (code and resulting pdf file) are provided in the various folders in this repository.

When using LaTeX, three types of fonts can be selected and are commonly used: a *roman or serif* font which is normally employed for body text and which should have maths support; a *sans-serif* font which is sometimes used for headers; and a *monospaced or typewriter* font. When selecting a font for a document, it is therefore important to consider whether the font supports mathematical characters (at least if we will be typing some maths!) and also to choose an appropriate sans-serif font to accompany it (the monospaced font often differs more visibly from the roman).

This survey focuses on serif fonts as these are the usual choice for longer documents such as articles or books (although sans-serifs have become more popular for longer text in recent years). However, in keeping with the reasoning above, I have also selected accompanying sans-serif fonts for each of the seven roman choices below (all of which have maths support of some form or another). As a monospaced font, I chose [Raph Levien](https://raph.levien.com)'s excellent [Inconsolata](https://en.wikipedia.org/wiki/Inconsolata), a popular choice not only in the TeX world but also as the main font in text editors.

As mentioned above, engines such as LuaLaTeX make the use of OpenType fonts possible in LaTeX. While Type 1 fonts (which often have dedicated LaTeX packages) are the simplest to setup and are available on most distributions (which makes them a good choice when co-writing documents, for example), OpenType fonts are more complete and customisable in their options and represent the best current standard in digital typography. Whenever possible (i.e. when a font is provided in Type 1 through a LaTeX package and also available as OpenType) I provide two samples, one for each configuration. In the remaining cases, I use whichever format is available. I give further details on the configuration used for producing the samples as well as on the sources of the sample text in the final two sections of this text. And now on to the fonts!



## Fonts

### Bembo

<p align="center">
  <img src="/img/fbb-libertinus.png?raw=true" width="700">
  <br>
  <i>fbb and Libertinus Math in LuaLaTeX</i>
</p>

Bembo is the oldest typeface in this survey. Released by the Monotype Corporation in 1929, the font's roman style is based on a design by [Francesco Griffo](https://en.wikipedia.org/wiki/Francesco_Griffo) (an Italian punchcutter who created the first italic type) from c. 1495. [Aldus Manutius](https://en.wikipedia.org/wiki/Aldus_Manutius), one of the most important printers of his age, used the font to publish a short work by the cleric [Pietro Bembo](https://en.wikipedia.org/wiki/Pietro_Bembo), after whom Monotype's face is named.

Bembo remains one of today's most popular book fonts, having been used by publishing houses such as Penguin Books or the Oxford University Press. While its old-style appearance may make it unsuitable for some documents, Bembo has received some attention from the LaTeX community. This is due in part to the work of [Edward Tufte](https://en.wikipedia.org/wiki/Edward_Tufte) (known among other things for his writings on data visualisation) whose remarkably-well-designed [books](https://www.edwardtufte.com/tufte/books_vdqi) use Bembo as their body text font. While these books were not composed in a TeX system, they have inspired the development of the [`tufte-latex`](https://ctan.org/pkg/tufte-latex) document class to produce similarly designed books as well as handouts.

<p align="center">
<a href="https://assets.fontsinuse.com/static/use-media-items/46/45399/upto-700xauto/5865cc1b/@2x/tvdoqi.jpeg">
<img src="https://assets.fontsinuse.com/static/use-media-items/46/45399/upto-700xauto/5865cc1b/@2x/tvdoqi.jpeg" height="350"/>
</a>

<a href="https://assets.fontsinuse.com/static/use-media-items/46/45201/upto-700xauto/5865cc1b/@2x/Columbia%20disaster.gif">
<img src="https://assets.fontsinuse.com/static/use-media-items/46/45201/upto-700xauto/5865cc1b/@2x/Columbia%20disaster.gif" height="350"/>
</a>

<a href="https://assets.fontsinuse.com/static/use-media-items/46/45398/upto-700xauto/5865cc1b/@2x/eicover.jpeg">
<img src="https://assets.fontsinuse.com/static/use-media-items/46/45398/upto-700xauto/5865cc1b/@2x/eicover.jpeg" height="350"/>
</a>
</p>
<p align="center">
<i>Books by Edward Tufte (click to enlarge). Source: Edward Tufte via
<a href="https://fontsinuse.com/uses/14727/edward-tufte-books">Fonts In Use</a>. License: all rights reserved
</i>
</p>

Monotype's Bembo is a commercial font, although a web-font version of ET Book, the font used in Tufte's books, has been made [available for free](https://edwardtufte.github.io/et-book/) by Tufte himself. A more complete free alternative is [Cardo](http://scholarsfonts.net/cardofnt.html), developed by [David J. Perry](http://scholarsfonts.net/index.html) and also based on the typeface cut for Aldus Manutius. Designed with the needs of classics and linguistics scholars in mind, Cardo has been modified and extended by [Michael Sharpe](http://math.ucsd.edu/~msharpe/) for use with LaTeX through the [`fbb` package](https://ctan.org/pkg/fbb). The fbb font is available in both OpenType and Type 1 formats and is thus suitable for use with OTF-compatible systems such as LuaLaTeX as well as pdfLaTeX.

While no maths companion font is available for fbb, Sharpe suggests the Libertine-style maths font provided by [`newtxmath`](https://www.ctan.org/pkg/newtx) with the `libertine` option in pdfLaTeX. In LuaLaTeX, I instead use [Libertinus](https://github.com/alif-type/libertinus), an OpenType font with maths support developed by Khaled Hosny which is covered below.

Regarding a sans-serif companion for Bembo, Tufte's books use Eric Gill's highly popular [Gill Sans](https://en.wikipedia.org/wiki/Gill_Sans). Like Bembo, Gill Sans is commercial and because of this I chose [Gillius ADF](https://arkandis.tuxfamily.org/adffonts.html), a free font inspired by Gill Sans and available in OpenType format, as an alternative. The [`gillius` package](https://ctan.org/tex-archive/fonts/gillius) provides support for pdfLaTeX as well as LuaLaTeX and XeLaTeX.



### Palatino

<p align="center">
  <img src="/img/tgpagella.png?raw=true" width="700">
  <br>
  <i>TeX Gyre Pagella in LuaLaTeX</i>
</p>

Palatino is one of the most widely-used and recognisable fonts of the XX century. Designed by [Hermann Zapf](https://en.wikipedia.org/wiki/Hermann_Zapf) and first released in 1949 by the Stempel foundry, Palatino was inspired by old-style Italian Renaissance types and influenced by Zapf's expertise in calligraphy. The font is named after [Giambattista Palatino](https://en.wikipedia.oreg/wiki/Giovanni_Battista_Palatino), one of the best-known calligraphers of the Renaissance period.

Palatino was originally intended for use in headings and display printing and aimed to be clearly readable even on small sizes and poor-quality paper. Two distinctive features which contribute to its legibility are a larger [x-height](https://en.wikipedia.org/wiki/X-height) and wider [apertures](https://en.wikipedia.org/wiki/Counter_(typography)) when compared to other fonts in the Renaissance tradition.

In the TeX universe, Palatino-style fonts are perhaps the most commonly used fonts after the default CM Roman. The close relation between Palatino and TeX goes beyond its mere frequent use with the typesetting system, however. Indeed, Donald Knuth discussed the design of CM Roman with Zapf (see the photo below), who would later create the [AMS Euler math typeface](https://en.wikipedia.org/wiki/AMS_Euler) with Knuth's assistance under commission by the American Mathematical Society (AMS). Zapf was also an [honorary member of the board of the TeX Users Group](http://tex-talk.net/2015/06/thank-you-hermann-zapf/) since 1980 with the title of "Wizard of Fonts."

<p align="center">
  <a href="https://media.gettyimages.com/photos/donald-knuth-a-stanford-university-professor-discusses-his-new-method-picture-id515128854?s=2048x2048">
  <img src="https://media.gettyimages.com/photos/donald-knuth-a-stanford-university-professor-discusses-his-new-method-picture-id515128854?s=2048x2048" width="550"/>
  </a>
  <br>
  <i>Donald Knuth (left) and Hermann Zapf (right) (click to enlarge). Source: Bettmann, via Getty Images</i>
</p>

Like Bembo, Palatino is a commercial font. Fortunately,  several clones of the original font have been developed over the years and are available for easy integration with LaTeX. In pdfLaTeX, I chose the text font provided by the [`newpx` package](https://www.ctan.org/pkg/newpx). As maths fonts, I provide samples using the maths companion font provided by the same package as well as an Euler-like font provided by the [`eulervm` package](https://ctan.org/pkg/eulervm). As you can see in the sample below, the Euler font has a distinctive look as a maths font with its upright letters instead of the usual italics. In this respect, it aims to reflect the typical handwriting of mathematicians on the blackboard.

<p align="center">
  <img src="/img/newpxtext-euler.png?raw=true" width="700">
  <br>
  <i>New PX and Euler-VM in pdfLaTeX</i>
</p>

Unlike many free fonts which are only available in Type 1 format, Palatino also has a
free OpenType clone with maths support: the GUST project has developed the [TeX Gyre Pagella](http://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella) font for which an OTF [maths companion font](http://www.gust.org.pl/projects/e-foundry/tg-math#section-4) is conveniently provided (in addition, there exists another free OTF maths font in Palatino-style called [Asana Math](https://www.ctan.org/tex-archive/fonts/Asana-Math/)). Unfortunately, there is no complete OpenType version of the Euler maths font: only an abandoned port named [Neo Euler](https://github.com/khaledhosny/euler-otf) and developed by Khaled Hosny exists. Because of this, I do not provide a sample with an Euler-like font in LuaLaTeX.

The most natural sans-serif companion to Palatino is probably Zapf's recent [Palatino Sans](https://www.linotype.com/111707/palatino-sans-family.html) font. [Optima](https://en.wikipedia.org/wiki/Optima), perhaps his best-known creation after Palatino, could also pair well with it. Unfortunately, both of these fonts are commercial and no free clone is available for easy use with LaTeX (the free URW Classico clone is available as a [LaTeX package](https://ctan.org/pkg/classico) but is not included with most distributions).

An alternative approach to looking for a sans-serif font which closely matches the serif in its design is to choose a visibly different sans font. Unlike a loosely matched sans font whose differences relative to the roman can create an unwelcome mild dissonance, a clearly dissimilar font can relieve this tension by making the high contrast a feature of the design. In this spirit, several LaTeX packages which use a Palatino clone as their main text font have opted for a [Helvetica](https://en.wikipedia.org/wiki/Helvetica) clone as a sans-serif font. Here I follow this approach by choosing the [TeX Gyre Heros](http://www.gust.org.pl/projects/e-foundry/tex-gyre/heros) font, a free Helvetica clone also developed by the GUST project. Heros is available in both OpenType and Type 1 formats, and a [package](https://ctan.org/pkg/tex-gyre-heros) is provided for easy use of the latte with pdfLaTeX.

Finally, an interesting set of fonts based on Palatino (derived from [URW Palladio](https://en.wikipedia.org/wiki/Ghostscript)) but with a unique and distinctive character is Kp-Fonts (the Johannes Kepler project -- no relation to Robert Slimbach's Kepler font) developed by [Christophe Caignaert](http://c.caignaert.free.fr/). This complete set of fonts (it contains roman, sans-serif, monospaced and maths fonts) is available for use with LaTeX through the [`kpfonts` package](https://ctan.org/pkg/kpfonts). Each of the three text fonts includes old-style figures and true small caps and is available in both the standard weight as well as a light-weight version. Even the default version of the roman font is, however, of a lighter weight than Palatino and in this respect is more similar to Aldus, a second font designed by Zapf which is similar to Palatino but intended for book use. For an example of the Aldus font in use in a TeX system, see the documentation of the [`fontspec` package](https://ctan.org/pkg/fontspec) which employs it as its main body font.

<p align="center">
  <img src="/img/kpfonts.png?raw=true" width="700">
  <br>
  <i>Kp-Fonts in pdfLaTeX</i>
</p>



### Crimson

<p align="center">
  <img src="/img/cochineal.png?raw=true" width="700">
  <br>
  <i>Cochineal in pdfLaTeX</i>
</p>

Crimson is a free, open-source font designed by [Sebastian Kosch](https://aldusleaf.org/) in 2010. At the time, Kosch says, quality free text fonts were scarce and so Crimson was developed with the laudable goal of providing a "workhorse font for the masses." Crimson is an old-style font in the Renaissance tradition, although Kosch mentions as inspiration some of the most popular 20th century revivals of fonts from that period such as Robert Slimbach's Minion or Jan Tschichold's Sabon.

For LaTeX, [Michael Sharpe](http://math.ucsd.edu/~msharpe/)'s [`cochineal`](https://ctan.org/pkg/cochineal) package provides a fork of the Crimson font with many glyphs added to ensure appropriate support for TeX use. A math companion is provided through the [`newtxmath`](https://www.ctan.org/pkg/newtx) package with the `cochineal` option. Unfortunately, `newtxmath` is not designed for combined use with OpenType fonts through LuaLaTeX/XeLaTeX. Therefore, and even though `cochineal` provides OpenType fonts, we restrict ourselves to using it in pdfLaTeX (together with the `newtxmath` companion font).

One of the characteristics of Crimson is its (coincidental) similarity to Slimbach's Minion font (although with smaller x-height and more elaborate details), which has become a standard choice for book typesetting since its first release in 1990 (for example, it is main body-text font used in Robert Bringhurst's classic text, [*The Elements of Typographic Style*](https://en.wikipedia.org/wiki/The_Elements_of_Typographic_Style).
Even though it is a commercial font, Minion (in particular its OpenType version, MinionPro) has gained popularity with LaTeX users as it comes bundled with some Adobe products and is thus available by default on some systems (the legality of using the font which comes with Adobe Reader is [dubious](https://tex.stackexchange.com/questions/17556/license-of-the-minion-pro-fonts-that-came-with-adobe-reader), however). While Minion does not provide math support, an (also commercial) math companion font, [Minion Math](http://www.typoma.com/en/fonts.html) by Johannes Küster, is also available.

<p align="center">
  <img src="/img/comparisons/minion-screenshot.png?raw=true" width="700">
  
  <img src="/img/comparisons/crimson-screenshot.png?raw=true" width="700">
  <br>
  <i>Minion Pro Regular (top) and Crimson Text (bottom). Source: Adobe Fonts and Google Fonts</i>
</p>



### Libertine

<p align="center">
  <img src="/img/libertinus.png?raw=true" width="700">
  <br>
  <i>Libertinus in LuaLaTeX</i>
</p>

The [Linux Libertine](http://libertine-fonts.org/) font family is perhaps the best-known example of an open-source font designed in the Internet era, and for good reason as it is an excellent font collection. While the three fonts we covered above are primarily inspired by old-style, Renaissance type from the 15th and 16th centuries, Libertine draws more on the 17th century Baroque style as well as the modern book fonts of the 19th and 20th centuries, and therefore has a more contemporary appearance than either Bembo or Crimson.

An important reference in the design of Libertine, developed as part of the Libertine Open Fonts Project (started by Philipp H. Poll with the goal of releasing fonts under a GNU license) is Times New Roman and its predecessor, Times Roman. Despite the similarities between the two fonts, there are also some clear differences. In terms of dimension, Libertine has a smaller x-height than Times (which was optimised for readability at small sizes, having been originally designed for newspaper columns) and a smaller footprint overall. Another important difference is in the serifs, with Libertine's being flatter and less sharp compared with Times' crisp, angular and somewhat triangular ones (see [this interview](https://www.linux.com/news/linux-libertine-open-fonts-offers-free-times-roman-alternative) with Poll for a more complete discussion of the rational for the Libertine design and of the differences when compared to Times). The Libertine family includes not only the Libertine roman but also an accompanying sans-serif font, Linux Biolinum.

<p align="center">
  <a href="http://blog.osp.kitchen/images/uploads/libertinagevstimes.png">
  <img src="http://blog.osp.kitchen/images/uploads/libertinagevstimes.png?raw=true" width="600"/>
  </a>
  <br>
  <i>Times New Roman (top) and Linux Libertine (bottom) (click to enlarge). Source: <a href="http://blog.osp.kitchen/">osp blog</a></i>
</p>

The Libertine fonts are widely used in open-source software, for example being included in [Libre Office](https://www.libreoffice.org/) and having been used in the [Wikipedia logo](https://en.wikipedia.org/wiki/Linux_Libertine#Usage). In LaTeX, the fonts have been conveniently packaged in the [`libertine` package](https://www.ctan.org/pkg/libertine), with [`newtxmath`](https://www.ctan.org/pkg/newtx) providing an accompanying math font.

In this survey, we use not the original Linux Libertine fonts but the [Libertinus family](https://github.com/alif-type/libertinus). This is a fork of the Libertine fonts by [Khaled Hosny](https://twitter.com/khaledghetas) which provides an OpenType math companion font (thus making Libertinus one of the very few font families with OTF math support) and fixes some of the bugs in the Libertine fonts. In addition to the roman, sans-serif and math versions, Libertinus also provides a monospaced font and a display font, as well as a semibold weight for the serif font; this level of completeness is one of its main strengths.

A LaTeX package, [`libertinus`](https://ctan.org/pkg/libertinus), enables the easy use of Libertinus in Type 1 format (for pdfLaTeX) as well as OpenType. We provide a sample using both pdfLaTeX as well as LuaLaTeX. Libertinus Math is only available as an OpenType font and therefore for the pdfLaTeX example we use `newtxmath`.



### STIX

<p align="center">
  <img src="/img/stix-two.png?raw=true" width="700">
  <br>
  <i>STIX Two in LuaLaTeX</i>
</p>

The [Scientific and Technical Information eXchange (STIX)](https://www.stixfonts.org/) font creation project is an initiative by a consortium of technical publishing companies (which includes the American Mathematical Society and Elsevier, among others) to provide a comprehensive set of fonts for the scientific community. First proposed in 1995, STIX provides Unicode-based fonts with coverage of the Latin, Greek and Cyrillic alphabets as well as a math font.

Originally designed to be compatible with Times fonts, the most recent (2.0) version of the fonts goes beyond mere compatibility to provide ["a fresh take"](https://github.com/stipub/stixfonts) on Times which aims to address some of its shortcomings and expand its typographic features. A quote from type foundry [Tiro Typeworks](https://tiro.com/) available on the project's [GitHub repository](https://github.com/stipub/stixfonts) explains how, for the design of STIX Two, the metal specimens used for pre-digital printing served as the basis for this redesign of the font. Compared with Times New Roman, the most visible difference in STIX Two is the greater x-height, which gives the font a more modern appearance in line with more contemporary typefaces such as Charter and Utopia, covered below.

<p align="center">
  <a href="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Times_and_STIX.png/1024px-Times_and_STIX.png">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Times_and_STIX.png/1024px-Times_and_STIX.png?raw=true" width="500"/>
  </a>
  <br>
  <i>Times New Roman (top) and STIX Two (bottom) (click to enlarge). Source: Blythwood via Wikimedia. License: CC BY-SA 4.0</i>
</p>

While a Type 1 version of STIX Two has been made available specifically for use by LaTeX users who do not use OpenType-compatible TeX engines, the fonts are primarily and originally OpenType. As such, we provide a sample of this font using only LuaTeX. It is worth emphasising how this is one of only a very small number of free OpenType math fonts (with Libertinus and the TeX Gyre fonts being the main alternatives). Finally, we will mention that those looking for a more exact Times New Roman clone with OpenType math support may be interested in the [TeX Gyre Termes](http://www.gust.org.pl/projects/e-foundry/tex-gyre/termes) font.



### Charter

<p align="center">
  <img src="/img/xcharter.png?raw=true" width="700">
  <br>
  <i>XCharter in pdfLaTeX</i>
</p>

The final two fonts in this brief survey have a distinctively more contemporary look. The first is Bitstream Charter, a transitional typeface designed by Matthew Carter in the late 1980s. Carter aimed to provide a suitable typeface for the low-resolution (300 dpi) printers of the time, and the result is a highly-legible font. In addition to a high x-height, one of the distinctive features of the font is its "economical style", with a minimum number of curves and more straight segments (see [this interview](https://www.myfonts.com/newsletters/cc/201310.html) with Carter for more details on Charter and his other work; Charter is also covered in Matthew Butterick's [Practical Typography](https://practicaltypography.com/) online book).

While the resolution of current printers is higher than it was at the time (in fact, the evolution of technology at the time of the original design of the font meant that its simplified design was no longer technically necessary by the time Carter finished the design), the font is now very appropriate for today's screens (most of which have lower resolutions than 300 dpi) where many of our documents are likely to be read. One prominent example of the use of this font with LaTeX is as the [font chosen for the documentation](https://tex.stackexchange.com/questions/38213/what-font-configuration-is-used-by-microtype-documentation) of the [`microtype` package](https://ctan.org/pkg/microtype).

In 1992, Bitstream donated a basic version of Charter to the X Consortium, allowing for its redistribution and modification. While this freely-available font does not provide some important features such as old-style figures or true small caps, an extension has been developed for use with LaTeX systems by [Michael Sharpe](http://math.ucsd.edu/~msharpe/) which adds these features and allows for easy use through the [XCharter package](https://ctan.org/pkg/xcharter). For our samples, we use this package together with a math companion from the [`newtxmath` package](https://www.ctan.org/pkg/newtx).



### Utopia

<p align="center">
  <img src="/img/erewhon.png?raw=true" width="700">
  <br>
  <i>Erewhon in pdfLaTeX</i>
</p>

Utopia was designed by famed designer Robert Slimbach (current Principal Type Designer at Adobe) and first released in 1989. Inspired by transitional fonts such as [Baskerville](https://en.wikipedia.org/wiki/Baskerville) with their high contrast in stroke thickness, it also has more modern features such as a greater x-height and somewhat thicker, slab-like serifs.

One of Utopia's distinctive characteristics as an Adobe typeface is that it has been open-sourced (in a basic version) by Adobe and can therefore be freely used or modified (while the font's initial donation to the X Consortium generated some controversy regarding its license, Adobe donated the font to the TeX Users Group (TUG)).

While the original Adobe font can easily be used with LaTeX through the [Fourier-GUTenberg package](https://www.ctan.org/pkg/fourier) (which also provides a math companion), it lacks old-style figures and true small caps (like the free version of Bitstream Charter covered above). As a text font we use instead the [Erewhon font](https://ctan.org/pkg/erewhon) again by [Michael Sharpe](http://math.ucsd.edu/~msharpe/) which adds these and other features to the [Heuristica font](https://ctan.org/pkg/heuristica), which in turn is based directly on Utopia.



## Sample text

The font samples are built with a set text comprised of some paragraphs of prose followed by a few maths formulas. The prose in the first page was taken from the [`lipsum` package](https://www.ctan.org/pkg/lipsum) which provides easy access to the classic lorem ipsum dummy text and is based o the online [Lorem Ipsum generator](https://www.lipsum.com/).

For the maths on the second page, the first two paragraphs and corresponding formulas are a standard sample used to display maths fonts for use with LaTeX taken from Example 8-8-10 of the [*The LaTeX Companion*](https://www.oreilly.com/library/view/the-latex-companion/0201362996/), whose code is available from [CTAN](https://ctan.org/tex-archive/info/examples/tlc2). The two theorems below are from the article, ["A Survey of Free Math Fonts for TeX and LaTeX"](http://www.tug.org/pracjourn/2006-1/hartke/hartke.pdf), as well as the (slightly edited) lines under them (the code is available [here](ftp://ftp.cvut.cz/tex-archive/documentation/Free_Math_Font_Survey/vn/vidupdf/) and [here](https://meeting.contextgarden.net/2011/talks/day3_05_ulrik_opentype/Samples/math-test-sample-input.tex)).



## Setup

In making the different font sample documents, I tried to keep the LaTeX setup as simple as possible. My aim was to have a minimal working preamble that I could then copy in the future whenever I wanted to use a particular font.

In pdfLaTeX, I set the default font encoding to T1 using the standard [`fontenc` package](https://www.ctan.org/pkg/fontenc). Maths fonts are then setup using [`mathtools`](https://ctan.org/pkg/mathtools?lang=en) (which loads the [`amsmath` package](https://ctan.org/pkg/amsmath) and adds new features such as two-line fractions, prescripts, etc.), `amssymb` for additional symbols and the [`bm` package](https://ctan.org/pkg/bm) for bold weight in math mode. In LuaLaTeX, [`unicode-math`](https://ctan.org/pkg/unicode-math) is used to provide unicode maths support (this makes `bm` unnecessary as `unicode-math` has its own boldface command, `symbf`).

In both pdfLaTeX and LuaLaTeX, the excellent [`microtype` package](https://ctan.org/pkg/microtype) is used to enable micro-typography features such as character protrusion and font expansion (see [here](http://www.khirevich.com/latex/microtype/) for a helpful description of the package's features). Finally, [`xcolor`](https://ctan.org/pkg/xcolor) is used to display the sans-serif paragraph in grey.

Regarding the setup of the fonts, I use the default options given in the documentation of the different font packages whenever possible.

