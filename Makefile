all:
	xelatex thesis 2>&1 > /dev/null
	makeindex thesis.idx 2>&1 > /dev/null
	bibtex thesis 2>&1 > /dev/null
	xelatex thesis 2>&1 > /dev/null
	xelatex thesis 2>&1 > /dev/null

clean:
	rm -f *.aux *.bbl *.blg *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc
