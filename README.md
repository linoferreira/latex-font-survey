# Survey of fonts for use in LaTeX

This folder contains samples of a few different fonts in OpenType format for use with a LaTeX system. The list of fonts used is by no means exhaustive: it is simply a list of fonts which are commonly used with LaTeX and which I personally like. [This question](https://tex.stackexchange.com/questions/425098/which-opentype-math-fonts-are-available/425099) on the TeX Stack Exchange provides a more complete list of OTF fonts with accompanying maths fonts.



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

An important reference in the design of Libertine, developed as part of the Libertine Open Fonts Project (started by Philipp H. Poll with the goal of releasing fonts under a GNU license), is Times New Roman and its predecessor, Times Roman. Despite the similarities between the two fonts, there are also some clear differences. In terms of dimension, Libertine has a smaller x-height than Times (which was optimised for readability at small sizes, having been originally designed for newspaper columns) and a smaller footprint overall. Another important difference is in the serifs, with Libertine's being flatter and less sharp compared with Times' crisp, angular and somewhat triangular ones (see [this interview](https://www.linux.com/news/linux-libertine-open-fonts-offers-free-times-roman-alternative) with Poll for a more complete discussion of the rational for the Libertine design and of the differences when compared to Times). The Libertine family includes not only the Libertine roman but also an accompanying sans-serif font, Linux Biolinum.

The Libertine fonts are widely used in open-source software, for example being included in [Libre Office](https://www.libreoffice.org/) and having been used in the [Wikipedia logo](https://en.wikipedia.org/wiki/Linux_Libertine#Usage). In LaTeX, the fonts have been conveniently packaged in the [`libertine` package](https://www.ctan.org/pkg/libertine), with [`newtxmath`](https://www.ctan.org/pkg/newtx) providing an accompanying math font.

In this survey, we use and showcase not the original Linux Libertine fonts but the [Libertinus family](https://github.com/alif-type/libertinus). This is a fork of the Libertine fonts by [Khaled Hosny](https://twitter.com/khaledghetas) which provides an OpenType math companion font (thus making Libertinus one of the very few font families with OTF math support) and fixes some of the bugs in the Libertine fonts. In addition to the roman, sans-serif and math versions, Libertinus also provides a monospaced font and a display font, as well as a semibold weight for the serif font; this level of completeness is one of its main advantages.

A LaTeX package, [`libertinus`](https://ctan.org/pkg/libertinus), enables the easy use of Libertinus in Type-1 format (for pdfLaTeX) as well as OpenType. We provide a sample using both pdfLaTeX as well as LuaLaTeX. Libertinus Math is only available as an OpenType font and therefore for the pdfLaTeX example we use `newtxmath`.



### STIX-Two

[//]: # Even more similar to Times New Roman but professionally designed (?) and with math support


### Charter

Bitstream Charter is a transitional typeface designed by Matthew Carter in the late 1980s. With this font the designer aimed to provide a legible output for printers of the time, which had low-resolutions. The font remains popular with its more modern look and on-screen readability, and was for example the [font chosen for the documentation](https://tex.stackexchange.com/questions/38213/what-font-configuration-is-used-by-microtype-documentation) of the [`microtype` package](https://ctan.org/pkg/microtype).

We use [`xcharter`](https://ctan.org/pkg/xcharter), an extension of Bitstream Charter which provides small caps and old-style figures and is present in the TeX Live distribution. While a Charter-like maths font is available through the [`newtxmath` package](https://www.ctan.org/pkg/newtx), this is not a Unicode font and therefore cannot be used to typeset the sample we chose to showcase these different fonts. Because of this, we combine the XCharter font with the Libertine Math, which we also use with the remaining three fonts below.

### Utopia



## Sample text

The font samples make use of a set text comprised of a few paragraphs of prose followed by a few maths formulas. The paragraphs in the first page were mostly taken from the [`kantlipsum`](https://ctan.org/pkg/kantlipsum) package, which generates dummy sentences in Kantian style.

As for the maths on the second page, the first two paragraphs and corresponding formulas are a standard sample used to display maths fonts for use with LaTeX taken from Example 8-8-10 of the [*The LaTeX Companion*](https://www.oreilly.com/library/view/the-latex-companion/0201362996/), whose code is available from [CTAN](https://ctan.org/tex-archive/info/examples/tlc2). The two theorems below are from the article, ["A Survey of Free Math Fonts for TeX and LaTeX"](http://www.tug.org/pracjourn/2006-1/hartke/hartke.pdf), as well as the (slightly edited) lines under them (the code is available [here](ftp://ftp.cvut.cz/tex-archive/documentation/Free_Math_Font_Survey/vn/vidupdf/) and [here](https://meeting.contextgarden.net/2011/talks/day3_05_ulrik_opentype/Samples/math-test-sample-input.tex)). (Further examples to be added in the future can potentially be taken from the [MathJax webpage](http://xahlee.info/math/display_math_on_web.html).)


## Setup

Since the LaTeX engine does not support the use of OpenType fonts, we use LuaTeX (XeTeX could be used instead) together with the [`fontspec` package](https://ctan.org/pkg/fontspec). We also load the [`mathtools`](https://www.ctan.org/pkg/mathtools) package (an extension of the classic [`amsmath`](https://www.ctan.org/pkg/amsmath) which provides additional symbols and tools for mathematical typesetting) as well as the [`unicode-math`](https://www.ctan.org/pkg/unicode-math) package which allows the use of math symbols through the Unicode standard. Finally, we use the [`microtype`](https://ctan.org/pkg/microtype) package which enables microtypography features (such as character protrusion and font expansion).



## Resources

- [Top 10 LaTeX Fonts](https://r2src.github.io/top10fonts/)
- [LaTeX font guide](https://wiki.carleton.edu/download/attachments/20155418/fontguide.pdf?version=1&modificationDate=1388599695000&api=v2)
- [Math Font Selection in LaTeX and Unicode](http://milde.users.sourceforge.net/LUCR/Math/math-font-selection.xhtml)
- [Fonts and TeX](https://www.tug.org/fonts/)
- [The Beauty of LaTeX](http://nitens.org/taraborelli/latex) -- contains several useful links in addition to the main content
- [Typesetting your academic CV in LaTeX](http://nitens.org/taraborelli/cvtex)

