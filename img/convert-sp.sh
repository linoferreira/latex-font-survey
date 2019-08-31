#!/bin/bash
# convert pdfs to png and crop

# bembo
magick -density 250 "../bembo/lualatex/fbb-libertinus.pdf[1]" -flatten "fbb-libertinus.png"
mogrify -crop 1300x560+410+1305 "fbb-libertinus.png"

# charter
convert -density 250 "../charter/pdflatex/xcharter.pdf[1]" -flatten "xcharter.png"
mogrify -crop 1300x560+410+1365 "xcharter.png"

# crimson
convert -density 250 "../crimson/pdflatex/cochineal.pdf[1]" -flatten "cochineal.png"
mogrify -crop 1300x560+410+1350 "cochineal.png"

# libertinus
magick -density 250 "../libertine/lualatex/libertinus.pdf[1]" -flatten "libertinus.png"
mogrify -crop 1300x560+410+1280 "libertinus.png"

# palatino
# tgpagella
magick -density 250 "../palatino/lualatex/tgpagella.pdf[1]" -flatten "tgpagella.png"
mogrify -crop 1300x560+410+1355 "tgpagella.png"
# newpxtext-euler
magick -density 250 "../palatino/pdflatex/newpxtext-euler.pdf[1]" -flatten "newpxtext-euler.png"
mogrify -crop 1300x560+410+1390 "newpxtext-euler.png"
# kpfonts
magick -density 250 "../palatino/pdflatex/kpfonts.pdf[1]" -flatten "kpfonts.png"
mogrify -crop 1300x560+410+1390 "kpfonts.png"

# stix
magick -density 250 "../stix/lualatex/stix-two.pdf[1]" -flatten "stix-two.png"
mogrify -crop 1300x560+410+1320 "stix-two.png"

# utopia
magick -density 250 "../utopia/pdflatex/erewhon.pdf[1]" -flatten "erewhon.png"
mogrify -crop 1300x560+410+1350 "erewhon.png"

