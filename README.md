# Sample of OpenType fonts in LaTeX

This folder contains samples of a few different fonts in OpenType format for use with a LaTeX system. The list of fonts used is by no means exhaustive: it is simply a list of fonts which are commonly used with LaTeX and which I personally like. [This question](https://tex.stackexchange.com/questions/425098/which-opentype-math-fonts-are-available/425099) on the TeX Stack Exchange provides a more complete list of OTF fonts with accompanying maths fonts.


## Sample text

The font samples make use of a set text comprised of a few paragraphs of prose followed by a few maths formulas. The paragraphs in the first page were mostly taken from the [`kantlipsum`](https://ctan.org/pkg/kantlipsum) package, which generates dummy sentences in Kantian style.

As for the maths on the second page, the first two paragraphs and corresponding formulas are a standard sample used to display maths fonts for use with LaTeX taken from Example 8-8-10 of the [*The LaTeX Companion*](https://www.oreilly.com/library/view/the-latex-companion/0201362996/), whose code is available from [CTAN](https://ctan.org/tex-archive/info/examples/tlc2). The two theorems below are from the article, ["A Survey of Free Math Fonts for TeX and LaTeX"](http://www.tug.org/pracjourn/2006-1/hartke/hartke.pdf), as well as the (slightly edited) lines under them (the code is available [here](ftp://ftp.cvut.cz/tex-archive/documentation/Free_Math_Font_Survey/vn/vidupdf/) and [here](https://meeting.contextgarden.net/2011/talks/day3_05_ulrik_opentype/Samples/math-test-sample-input.tex)). (Further examples to be added in the future can potentially be taken from the [MathJax webpage](http://xahlee.info/math/display_math_on_web.html).)


## Setup

Since the LaTeX engine does not support the use of OpenType fonts, we use LuaTeX (XeTeX could be used instead) together with the [`fontspec` package](https://ctan.org/pkg/fontspec). We also load the [`mathtools`](https://www.ctan.org/pkg/mathtools) package (an extension of the classic [`amsmath`](https://www.ctan.org/pkg/amsmath) which provides additional symbols and tools for mathematical typesetting) as well as the [`unicode-math`](https://www.ctan.org/pkg/unicode-math) package which allows the use of math symbols through the Unicode standard. Finally, we use the [`microtype`](https://ctan.org/pkg/microtype) package which enables microtypography features (such as character protrusion and font expansion).


## Fonts

### Palatino

Palatino is one of the most widely used and recognisable fonts of the XX century. Designed by Hermann Zapf and first released in 1949, it was intended for use in headings and display printing and aimed to be clearly readable even on small sizes and poor-quality paper. Two distinctive features which contribute to its legibility are a large x-height (the height of lower-case letters) and large apertures when compared to other fonts of Renaissance inspiration.

In LaTeX, it is perhaps the most commonly used font after the default Computer Modern Roman and several clones of the original font have been made available through various packages over the years. Since our aim is to use OTF fonts, we chose as a Palatino clone the [TeX Gyre Pagella](http://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella) font by the GUST project. An OTF [math companion](http://www.gust.org.pl/projects/e-foundry/tg-math#section-4) is conveniently provided as well.

In addition to the TeX Gyre Pagella Math font, we also explore two other alternative maths fonts for use with Palatino clones. These are based on [Neo Euler](https://github.com/khaledhosny/euler-otf), an abandoned project by Khaled Hosny to convert the original Euler maths fonts designed by Hermann Zapf himself with the assistance of Donald Knuth on commission from the American Mathematical Society, and on [Asana Math](https://www.ctan.org/tex-archive/fonts/Asana-Math/), a recent and extensive maths font in Palatino style. These two configurations are taken from an answer by TeX Stack Exchange user [Davislor](https://tex.stackexchange.com/users/61644/davislor) to [this question](https://tex.stackexchange.com/questions/103983/how-do-i-use-ams-euler) on the website (see also an answer by the same user to [this question](https://tex.stackexchange.com/questions/84770/using-palatino-and-euler-math)).

Finally, it is worth mentioning that Hermann Zapf designed a second font similar to Palatino but intended for book use, named Aldus (a current, redesigned version is called Aldus Nova and sold by the Linotype foundry). This is in fact the main font used in the documentation of the [`fontspec` package](https://ctan.org/pkg/fontspec).

### Libertine

The Linux Libertine font is a recent font inspired by neoclassical fonts and which has gained popularity in the open source community (one of its most prominent uses is as the font used in the Wikipedia logo).

While the original Libertine font provides several typographical features such as true small caps, ligatures and old-style features, it is not a maths font. We use instead the [Libertinus font](https://github.com/alif-type/libertinus), a fork of the Linux Libertine (and Linux Biolinum font, which is the sans-serif companion of the Libertine) which not only provides OTF maths support but also addresses some bugs with the original fonts.

One of the main advantages of the Libertinus font is how complete it is: it includes a semibold weight as well as display and mono fonts.

### Charter

Bitstream Charter is a transitional typeface designed by Matthew Carter in the late 1980s. With this font the designer aimed to provide a legible output for printers of the time, which had low-resolutions. The font remains popular with its more modern look and on-screen readability, and was for example the [font chosen for the documentation](https://tex.stackexchange.com/questions/38213/what-font-configuration-is-used-by-microtype-documentation) of the [`microtype` package](https://ctan.org/pkg/microtype).

We use [`xcharter`](https://ctan.org/pkg/xcharter), an extension of Bitstream Charter which provides small caps and old-style figures and is present in the TeX Live distribution. While a Charter-like maths font is available through the [`newtxmath` package](https://www.ctan.org/pkg/newtx), this is not a Unicode font and therefore cannot be used to typeset the sample we chose to showcase these different fonts. Because of this, we combine the XCharter font with the Libertine Math, which we also use with the remaining three fonts below.

### Minion

Minion is a one of the most popular fonts currently used for typesetting books (for example, it is main body-text font used in Robert Bringhurst's classic text, [*The Elements of Typographic Style*](https://en.wikipedia.org/wiki/The_Elements_of_Typographic_Style). It was designed by Robert Slimbach in the early 1990s and released by Adobe. 

MinionPro is an OpenType version of the original font and has gained popularity with LaTeX users as it comes bundled with some Adobe products and is thus available by default on some systems (the legality of using the font which comes with Adobe Reader is [dubious](https://tex.stackexchange.com/questions/17556/license-of-the-minion-pro-fonts-that-came-with-adobe-reader), however). As further evidence of the font's popularity in the LaTeX community, a [package](https://www.ctan.org/pkg/minionpro) is available which provides support for using these fonts with LaTeX. In addition, [Kieran Healy](https://kieranhealy.org/), a sociologist known (among other things!) for providing excellent [LaTeX templates](https://github.com/kjhealy/latex-custom-kjh), uses it for most of his typesetting, as [this working paper](https://kieranhealy.org/files/papers/orgentrep.pdf) and [his CV](https://kieranhealy.org/vita.pdf).

While the font is only available commercially, we here provide a small sample mostly for comparison with the free alternatives above. It should be noted that an -- also commercial -- maths companion font, [Minion Math](http://www.typoma.com/en/fonts.html) by Johannes Küster, is available as well, although we were not able to gain access to it. (This [TeX Stack Exchange question](https://tex.stackexchange.com/questions/320636/minion-math-font-for-low-budget) contains more information and examples.) As mentioned above, in this sample the font is paired with Libertinus Math.

### Bembo

Bembo is another popular choice for typesetting books. One of the reasons why some LaTeX users have shown interest in it may have to do with the fact that it is the font used in [Edward Tufte's books](https://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0000hB), which are well-known by those interested in data visualisation and typography and whose design has led to the development of the [`tufte-latex`](https://ctan.org/pkg/tufte-latex) document class to produce similarly designed books or handouts.

While Bembo is also a commercial font (although a web-font version of ET Book, the font used in Tufte's books, has been made available for free by Tufte himself), a free clone named [Cardo](http://scholarsfonts.net/cardofnt.html) exists. This font has been extended (with, e.g., small caps and old-style figures) and made more easily available to LaTeX users through the [`fbb` package](https://ctan.org/pkg/fbb).

Similarly to Charter, Cardo also has a maths companion available in the [`newtxmath` package](https://www.ctan.org/pkg/newtx). For the reasons discussed above, however, we were not able to use this font for our sample and use Libertinus Math instead.

### Caslon

Caslon is originally an old (XVII century) font designed by William Caslon in London. We provide a sample of a modern version of this font, Adobe Caslon Pro, noting that it may be slightly too old-fashioned-looking for some current academic work.

### Further fonts to look into

Sabon is another popular choice. It was designed in the XX century and may thus be more appropriate than Caslon for a refined but modern design.

Hoefler, designed for and released by Apple in the early 1990s, may also be worth exploring.

Georgia, also designed by Matthew Carter (the designer of Charter above), is popular and could be a good choice.


## Resources

- [Top 10 LaTeX Fonts](https://r2src.github.io/top10fonts/)
- [LaTeX font guide](https://wiki.carleton.edu/download/attachments/20155418/fontguide.pdf?version=1&modificationDate=1388599695000&api=v2)
- [Math Font Selection in LaTeX and Unicode](http://milde.users.sourceforge.net/LUCR/Math/math-font-selection.xhtml)
- [Fonts and TeX](https://www.tug.org/fonts/)
- [The Beauty of LaTeX](http://nitens.org/taraborelli/latex) -- contains several useful links in addition to the main content
- [Typesetting your academic CV in LaTeX](http://nitens.org/taraborelli/cvtex)

