PDF_PRODUCER=pdflatex
FILE=CR
PDF_VIEWER=evince

PHONY: all clean view do_anyway

all: $(LATEX_FILE)
	$(PDF_PRODUCER) $(FILE).tex
	$(PDF_PRODUCER) $(FILE).tex

view: all
	$(PDF_VIEWER) $(FILE).pdf &

do_anyway: 

clean: do_anyway
	@rm -rf *.toc *~ *.lof *.aux  *.log *.out *.bbl *.blg *.nav *.snm
