LATEX = latexmk -pdf --shell-escape

default: document.pdf

document.pdf: Makefile *.tex *.bib *.png oxycomps.sty
	$(LATEX) document

clean:
	rm -f *-blx.bib *.4ct *.4og *.4tc *.aux *.bbl *.bcf *.blg *.doc *.dvi *.fdb_latexmk *.fls *.idv *.lg *.log *.nav *.odt *.out *.rtf *.snm *.tmp *.toc *.vrb *.xml *.xref *.pdf *.synctex.gz $(outputs)
