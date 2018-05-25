archivo=notes
biblio=notes

# sudo vim /usr/share/texlive/texmf-dist/web2c/texmf.cnf
# increase main_memory
# texhash

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
