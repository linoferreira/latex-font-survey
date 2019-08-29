#!/bin/bash

# bembo
magick -density 250 "../bembo/lualatex/fbb-libertinus.pdf[1]" -flatten "fbb-libertinus.png"
mogrify -crop 1300x560+410+1305 "fbb-libertinus.png"

# charter
convert -density 250 "../charter/pdflatex/xcharter.pdf[1]" -flatten "xcharter.png"
mogrify -crop 1300x560+410+1365 "xcharter.png"

# crimson
convert -density 250 "../crimson/pdflatex/cochineal.pdf[1]" -flatten "cochineal.png"
mogrify -crop 1300x560+410+1350 "cochineal.png"

