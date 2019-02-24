archivo=notes
biblio=notes
slides=main

# ToDo: create an ´all´ command.

pdf:
	pdflatex ${archivo}
	bibtex ${biblio}
	pdflatex ${archivo}
	pdflatex ${archivo}

read:
	evince ${archivo}.pdf &

add:
	git add Makefile
	git add ${archivo}.tex
	git status

clean:
	 rm -f *.ps  *.log *.aux
	 rm -f *.out *.dvi *.bbl *.blg
	 rm -f *.toc *.lof *.lot *.brf
	 rm -f *.pyg *.log *.nav *.snm

# make slides
b:
	pdflatex ${slides}

bb:
	evince ${slides}.pdf &
