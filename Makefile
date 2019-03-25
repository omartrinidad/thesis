archivo=notes
biblio=notes
slides=main

# ToDo: create an ´all´ command.

pdf:
	pdflatex --shell-escape --enable-write18 ${archivo}
	bibtex ${biblio}
	pdflatex --shell-escape --enable-write18 ${archivo}
	pdflatex --shell-escape --enable-write18 ${archivo}

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
