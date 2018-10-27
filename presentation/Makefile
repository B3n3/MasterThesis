all:
	pdflatex presentation.tex; bibtex presentation; pdflatex presentation.tex

clean:
	rm -f *.aux *.log *.out *.log *.nav *.snm *.toc *.vrb *.bbl *.blg

dist-clean: clean
	rm -f *.pdf
