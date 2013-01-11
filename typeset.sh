#!/bin/bash

SYSTEM=`uname -s`

# typesetting
echo "1) Typesetting"
xelatex thesis
makeindex thesis.idx
bibtex thesis
xelatex thesis
xelatex thesis

# cleaning temporary files
echo "2) Cleaning temp files"
rm *.aux *.bbl *.blg *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc

# preview the pdf
echo "3) Opening pdf file"
if [ $SYSTEM = "Linux" ]; then
	evince thesis.pdf
elif [ $SYSTEM = "Darwin" ]; then
	open thesis.pdf
else
	echo "Not a *nix system, cancel preview :("
fi	# ifend
