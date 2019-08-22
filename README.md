# Survey of fonts for use in LaTeX

This repository contains samples of a few font families (roman, sans-serif and maths fonts) for use with LaTeX systems.

LaTeX is often associated with its default fonts, Donald Knuth's [Computer Modern](https://en.wikipedia.org/wiki/Computer_Modern) typefaces. While these fonts are excellent, they have become so ubiquitous in the scientific community that many LaTeX users, myself included, have sought to use other fonts for their documents. As a result, a plethora of font packages and even OpenType-compatible engines (XeTeX and LuaTeX) have emerged in the past couple of decades.

Some time ago, I set out to explore this extensive set of LaTeX font options in order to find a smaller group which I could make frequent use of for my typesetting and become more acquainted with as a result. I wanted not only to identify some good font choices (well-designed and well-supported fonts which can be a good fit for the content of the documents I type) but also to write down something about the history, character and current significance of the fonts in the typographical or LaTeX community. My aim was also to produce some short samples of the fonts in use both for ease of comparison and reference as well as for quick access to the package setups.

The list of fonts below is by no means exhaustive: it is simply a list of fonts which are commonly used with LaTeX and which I personally like.

The other files in the repo contain the LaTeX code used to generate the samples included below, as well as the pdf files from which they were taken.



## Fonts

### Bembo

Bembo is perhaps the oldest-looking typeface in this survey. Released by the Monotype Corporation in 1929, the font's roman style is based on a design by [Francesco Griffo](https://en.wikipedia.org/wiki/Francesco_Griffo) (an Italian punchcutter who created the first italic type) from c. 1495. [Aldus Manutius](https://en.wikipedia.org/wiki/Aldus_Manutius), one of the most important printers of his age, used the font to publish a short work by the cleric [Pietro Bembo](https://en.wikipedia.org/wiki/Pietro_Bembo), after whom Monotype's face is named.

Bembo remains one of the most popular book fonts, having been used by publishing houses such as Penguin Books or the Oxford University Press. While its old-style appearance may make it unsuitable for some documents (perhaps short scientific articles, for example), Bembo has received some attention from the LaTeX community. This is due in part to the work of [Edward Tufte](https://en.wikipedia.org/wiki/Edward_Tufte), known among other things for his writings on data visualisation, whose remarkably-well-designed [books](https://www.edwardtufte.com/tufte/books_vdqi) make use of Bembo as their body text font. While these books were not composed in a TeX system, they have inspired the development of the [`tufte-latex`](https://ctan.org/pkg/tufte-latex) document class to produce similarly designed books or handouts.

Monotype's Bembo is a commercial font, although a web-font version of ET Book, the font used in Tufte's books, has been made [available for free](https://edwardtufte.github.io/et-book/) by Tufte himself. However, a free alternative named [Cardo](http://scholarsfonts.net/cardofnt.html) and also based on the typeface cut for Aldus Manutius has been developed by [David J. Perry](http://scholarsfonts.net/index.html). Designed with the needs of classicists and linguists in mind, Cardo has been modified and extended by [Michael Sharpe](http://math.ucsd.edu/~msharpe/) and made easily available for use in LaTeX through the [`fbb` package](https://ctan.org/pkg/fbb). fbb is available both in an OpenType and a Type 1 version, suitable for use with OTF-compatible systems such as LuaLaTeX as well as pdfLaTeX.

While no math companion font is available for fbb, the package's author suggest the use of [`newtxmath`](https://www.ctan.org/pkg/newtx) with the `libertine` option in pdfTeX. In LuaLaTeX, we instead use [Libertinus](https://github.com/alif-type/libertinus), an OpenType font with math support developed by Khaled Hosny and covered below.

Edward Tufte's books use Eric Gill's Gill Sans, a widely-used sans font, as a sans-serif companion. Like Bembo, Gill Sans is commercial and because of this we use [Gillius ADF](https://arkandis.tuxfamily.org/adffonts.html), a free font inspired by Gill Sans available in OpenType format, as an alternative. The package [`gillius`](https://ctan.org/tex-archive/fonts/gillius) provides LaTeX support for both pdfLaTeX as well as LuaLaTeX and XeLaTeX.



### Palatino

Palatino is one of the most widely-used and recognisable fonts of the XX century. Designed by [Hermann Zapf](https://en.wikipedia.org/wiki/Hermann_Zapf) and first released in 1949 by the Stempel foundry, Palatino was inspired by old-style Italian Renaissance types and influenced by Zapf's expertise in calligraphy. The font is named after [Giambattista Palatino](https://en.wikipedia.oreg/wiki/Giovanni_Battista_Palatino), one of the best-known calligraphers of the Renaissance period.

Palatino was originally intended for use in headings and display printing and aimed to be clearly readable even on small sizes and poor-quality paper. Two distinctive features which contribute to its legibility are a larger x-height (the height of lower-case letters) and wider apertures when compared to other fonts in the Renaissance tradition.

In the TeX universe, Palatino-style fonts are perhaps the most commonly used fonts after the default Computer Modern (CM) Roman. However, the close relation between Palatino and TeX goes beyond its mere frequent use with the typesetting system. In fact, Donald Knuth discussed the design of CM Roman with Herman Zapf ([see photo](https://twitter.com/hardmaru/status/1074964265063182337)), who would later create the [AMS Euler math typeface](https://en.wikipedia.org/wiki/AMS_Euler) with Knuth's assistance under commission by the American Mathematical Society (AMS). Zapf was also an [honorary member of the board of the TeX Users Group](http://tex-talk.net/2015/06/thank-you-hermann-zapf/) since 1980 with the title of "Wizard of Fonts."

Like Bembo, Palatino is a commercial font. Fortunately,  several clones of the original font have been made available for use in LaTeX over the years. In pdfLaTeX, we use the text font provided by the [`newpx` package](https://www.ctan.org/pkg/newpx). As a math font, we use both the math companion font provided by the same package as well as an Euler-like font provided by the [`eulervm` package](https://ctan.org/pkg/eulervm). As you can see on the sample below, the Euler font has a distinctive look as a math font, with upright letters instead of the usual italics. In this respect it aims to reflect the typical handwriting of mathematicians on the blackboard.

Unlike many fonts for which LaTeX packages are available, Palatino also has a
freely-available OpenType clone with math support: the GUST project has developed the [TeX Gyre Pagella](http://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella) font for which an OTF [math companion font](http://www.gust.org.pl/projects/e-foundry/tg-math#section-4) is conveniently provided as well. Unfortunately, there is no complete OpenType version of the Euler math font: only an abandoned port named [Neo Euler](https://github.com/khaledhosny/euler-otf) and developed by Khaled Hosny exists. Because of this, we do not provide a sample of an Euler font in LuaLaTeX. It is worth mentioning that there exists an alternative free OTF math font in Palatino-style called [Asana Math](https://www.ctan.org/tex-archive/fonts/Asana-Math/).

Finally, an interesting set of fonts based on Palatino (they are derived from [URW Palladio](https://en.wikipedia.org/wiki/Ghostscript)) but with a unique and distinctive character are the Kp-Fonts (the Johannes Kepler project -- no relation to Robert Slimbach's Kepler font) developed by [Christophe Caignaert](http://c.caignaert.free.fr/). This complete set of fonts (it contains roman, sans-serif, monospaced and math fonts) is available for use with LaTeX through the [`kpfonts`](https://ctan.org/pkg/kpfonts) package. In addition to old-style figures and true small caps, each of the fonts is also available in a *light* version. Even the default version of the roman font is, however, of a lighter weight than Palatino and in this respect is more similar to Aldus, a second font designed by Zapf which is similar to Palatino but intended for book use. For an example of the Aldus font in use in a TeX system, see the documentation of the [`fontspec` package](https://ctan.org/pkg/fontspec) which employs it as its main body font.



### Crimson

Crimson is a free, open-source font designed by [Sebastian Kosch](https://aldusleaf.org/) in 2010. At the time, Kosch says, quality free text fonts were scarce and so Crimson was developed with the laudable goal of providing a "workhorse font for the masses." Crimson is an old-style font in the Renaissance tradition, although Kosch mentions as inspiration some of the most popular 20th century revivals of fonts from that period such as Robert Slimbach's Minion or Jan Tschichold's Sabon.

For LaTeX, [Michael Sharpe](http://math.ucsd.edu/~msharpe/)'s [`cochineal`](https://ctan.org/pkg/cochineal) package provides a fork of the Crimson font with many glyphs added to ensure appropriate support for TeX use. A math companion is provided through the [`newtxmath`](https://www.ctan.org/pkg/newtx) package with the `cochineal` option. Unfortunately, `newtxmath` is not designed for combined use with OpenType fonts through LuaLaTeX/XeLaTeX. Therefore, and even though `cochineal` provides OpenType fonts, we restrict ourselves to using it in pdfLaTeX (together with the `newtxmath` companion font).

One of the characteristics of Crimson is its (coincidental) similarity to Slimbach's Minion font (although with smaller x-height and more elaborate details), which has become a standard choice for book typesetting since its first release in 1990 (for example, it is main body-text font used in Robert Bringhurst's classic text, [*The Elements of Typographic Style*](https://en.wikipedia.org/wiki/The_Elements_of_Typographic_Style).
Even though it is a commercial font, Minion (in particular its OpenType version, MinionPro) has gained popularity with LaTeX users as it comes bundled with some Adobe products and is thus available by default on some systems (the legality of using the font which comes with Adobe Reader is [dubious](https://tex.stackexchange.com/questions/17556/license-of-the-minion-pro-fonts-that-came-with-adobe-reader), however). While Minion does not provide math support, an (also commercial) math companion font, [Minion Math](http://www.typoma.com/en/fonts.html) by Johannes Küster, is also available.



### Libertine

The [Linux Libertine](http://libertine-fonts.org/) font family is perhaps the best-known example of an open-source font designed in the Internet era, and for good reason as it is an excellent font collection. While the three fonts we covered above are primarily inspired by old-style, Renaissance type from the 15th and 16th centuries, Libertine draws more on the 17th century Baroque style as well as the modern book fonts of the 19th and 20th centuries, and therefore has a more contemporary appearance than either Bembo or Crimson.

An important reference in the design of Libertine, developed as part of the Libertine Open Fonts Project (started by Philipp H. Poll with the goal of releasing fonts under a GNU license) is Times New Roman and its predecessor, Times Roman. Despite the similarities between the two fonts, there are also some clear differences. In terms of dimension, Libertine has a smaller x-height than Times (which was optimised for readability at small sizes, having been originally designed for newspaper columns) and a smaller footprint overall. Another important difference is in the serifs, with Libertine's being flatter and less sharp compared with Times' crisp, angular and somewhat triangular ones (see [this interview](https://www.linux.com/news/linux-libertine-open-fonts-offers-free-times-roman-alternative) with Poll for a more complete discussion of the rational for the Libertine design and of the differences when compared to Times). The Libertine family includes not only the Libertine roman but also an accompanying sans-serif font, Linux Biolinum.

The Libertine fonts are widely used in open-source software, for example being included in [Libre Office](https://www.libreoffice.org/) and having been used in the [Wikipedia logo](https://en.wikipedia.org/wiki/Linux_Libertine#Usage). In LaTeX, the fonts have been conveniently packaged in the [`libertine` package](https://www.ctan.org/pkg/libertine), with [`newtxmath`](https://www.ctan.org/pkg/newtx) providing an accompanying math font.

In this survey, we use and showcase not the original Linux Libertine fonts but the [Libertinus family](https://github.com/alif-type/libertinus). This is a fork of the Libertine fonts by [Khaled Hosny](https://twitter.com/khaledghetas) which provides an OpenType math companion font (thus making Libertinus one of the very few font families with OTF math support) and fixes some of the bugs in the Libertine fonts. In addition to the roman, sans-serif and math versions, Libertinus also provides a monospaced font and a display font, as well as a semibold weight for the serif font; this level of completeness is one of its main strengths.

A LaTeX package, [`libertinus`](https://ctan.org/pkg/libertinus), enables the easy use of Libertinus in Type 1 format (for pdfLaTeX) as well as OpenType. We provide a sample using both pdfLaTeX as well as LuaLaTeX. Libertinus Math is only available as an OpenType font and therefore for the pdfLaTeX example we use `newtxmath`.



### STIX

The [Scientific and Technical Information eXchange (STIX)](https://www.stixfonts.org/) font creation project is an initiative by a consortium of technical publishing companies (which includes the American Mathematical Society and Elsevier, among others) to provide a comprehensive set of fonts for the scientific community. First proposed in 1995, STIX provides Unicode-based fonts with coverage of the Latin, Greek and Cyrillic alphabets as well as a math font.

Originally designed to be compatible with Times fonts, the most recent (2.0) version of the fonts goes beyond mere compatibility to provide ["a fresh take"](https://github.com/stipub/stixfonts) on Times which aims to address some of its shortcomings and expand its typographic features. A quote from type foundry [Tiro Typeworks](https://tiro.com/) available on the project's [GitHub repository](https://github.com/stipub/stixfonts) explains how, for the design of STIX Two, the metal specimens used for pre-digital printing served as the basis for this redesign of the font. Compared with Times New Roman, the most visible difference in STIX Two is the greater x-height, which gives the font a more modern appearance in line with more contemporary typefaces such as Charter and Utopia, covered below.

While a Type 1 version of STIX Two has been made available specifically for use by LaTeX users who do not use OpenType-compatible TeX engines, the fonts are primarily and originally OpenType. As such, we provide a sample of this font using only LuaTeX. It is worth emphasising how this is one of only a very small number of free OpenType math fonts (with Libertinus and the TeX Gyre fonts being the main alternatives). Finally, we will mention that those looking for a more exact Times New Roman clone with OpenType math support may be interested in the [TeX Gyre Termes](http://www.gust.org.pl/projects/e-foundry/tex-gyre/termes) font.



### Charter

The final two fonts in this brief survey have a distinctively more contemporary look. The first is Bitstream Charter, a transitional typeface designed by Matthew Carter in the late 1980s. Carter aimed to provide a suitable typeface for the low-resolution (300 dpi) printers of the time, and the result is a highly-legible font. In addition to a high x-height, one of the distinctive features of the font is its "economical style", with a minimum number of curves and more straight segments (see [this interview](https://www.myfonts.com/newsletters/cc/201310.html) with Carter for more details on Charter and his other work; Charter is also covered in Matthew Butterick's [Practical Typography](https://practicaltypography.com/) online book).

While the resolution of current printers is higher than it was at the time (in fact, the evolution of technology at the time of the original design of the font meant that its simplified design was no longer technically necessary by the time Carter finished the design), the font is now very appropriate for today's screens (most of which have lower resolutions than 300 dpi) where many of our documents are likely to be read. One prominent example of the use of this font with LaTeX is as the [font chosen for the documentation](https://tex.stackexchange.com/questions/38213/what-font-configuration-is-used-by-microtype-documentation) of the [`microtype` package](https://ctan.org/pkg/microtype).

In 1992, Bitstream donated a basic version of Charter to the X Consortium, allowing for its redistribution and modification. While this freely-available font does not provide some important features such as old-style figures or true small caps, an extension has been developed for use with LaTeX systems by [Michael Sharpe](http://math.ucsd.edu/~msharpe/) which adds these features and allows for easy use through the [XCharter package](https://ctan.org/pkg/xcharter). For our samples, we use this package together with a math companion from the [`newtxmath` package](https://www.ctan.org/pkg/newtx).



### Utopia

Utopia was designed by famed designer Robert Slimbach (current Principal Type Designer at Adobe) and first released in 1989. Inspired by transitional fonts such as [Baskerville](https://en.wikipedia.org/wiki/Baskerville) with their high contrast in stroke thickness, it also has more modern features such as a greater x-height and somewhat thicker, slab-like serifs.

One of Utopia's distinctive characteristics as an Adobe typeface is that it has been open-sourced (in a basic version) by Adobe and can therefore be freely used or modified (while the font's initial donation to the X Consortium generated some controversy regarding its license, Adobe donated the font to the TeX Users Group (TUG)).

While the original Adobe font can easily be used with LaTeX through the [Fourier-GUTenberg package](https://www.ctan.org/pkg/fourier) (which also provides a math companion), it lacks old-style figures and true small caps (like the free version of Bitstream Charter covered above). As a text font we use instead the [Erewhon font](https://ctan.org/pkg/erewhon) again by [Michael Sharpe](http://math.ucsd.edu/~msharpe/) which adds these and other features to the [Heuristica font](https://ctan.org/pkg/heuristica), which in turn is based directly on Utopia.



## Sample text

The font samples are built with a set text comprised of some paragraphs of prose followed by a few maths formulas. The prose in the first page was taken from the [`lipsum` package](https://www.ctan.org/pkg/lipsum) which provides easy access to the classic lorem ipsum dummy text and is based o the online [Lorem Ipsum generator](https://www.lipsum.com/).

For the maths on the second page, the first two paragraphs and corresponding formulas are a standard sample used to display maths fonts for use with LaTeX taken from Example 8-8-10 of the [*The LaTeX Companion*](https://www.oreilly.com/library/view/the-latex-companion/0201362996/), whose code is available from [CTAN](https://ctan.org/tex-archive/info/examples/tlc2). The two theorems below are from the article, ["A Survey of Free Math Fonts for TeX and LaTeX"](http://www.tug.org/pracjourn/2006-1/hartke/hartke.pdf), as well as the (slightly edited) lines under them (the code is available [here](ftp://ftp.cvut.cz/tex-archive/documentation/Free_Math_Font_Survey/vn/vidupdf/) and [here](https://meeting.contextgarden.net/2011/talks/day3_05_ulrik_opentype/Samples/math-test-sample-input.tex)).



## Setup

Since the LaTeX engine does not support the use of OpenType fonts, we use LuaTeX (XeTeX could be used instead) together with the [`fontspec` package](https://ctan.org/pkg/fontspec). We also load the [`mathtools`](https://www.ctan.org/pkg/mathtools) package (an extension of the classic [`amsmath`](https://www.ctan.org/pkg/amsmath) which provides additional symbols and tools for mathematical typesetting) as well as the [`unicode-math`](https://www.ctan.org/pkg/unicode-math) package which allows the use of math symbols through the Unicode standard. Finally, we use the [`microtype`](https://ctan.org/pkg/microtype) package which enables microtypography features (such as character protrusion and font expansion).


