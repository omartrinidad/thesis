slides=main

# sudo vim /usr/share/texlive/texmf-dist/web2c/texmf.cnf
# increase main_memory
# texhash

pdf:
	pdflatex ${slides}

read:
	evince ${slides}.pdf &

clean:
	 rm -f *.ps  *.log *.aux
	 rm -f *.out *.dvi *.bbl *.blg
	 rm -f *.toc *.lof *.lot *.brf
	 rm -f *.pyg *.log *.nav *.snm
