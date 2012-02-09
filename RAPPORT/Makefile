PDF_PRODUCER=pdflatex
BIB_PRODUCER=bibtex
LATEX_FILE=rapport
SRC=rapport.tex bibliographie.bib src/*.tex
PDF_VIEWER=evince

all: $(LATEX_FILE).pdf view

$(LATEX_FILE).pdf: $(SRC)
	$(PDF_PRODUCER) $(LATEX_FILE).tex
	$(BIB_PRODUCER) $(LATEX_FILE)
	$(PDF_PRODUCER) $(LATEX_FILE).tex
	$(PDF_PRODUCER) $(LATEX_FILE).tex
	@rm -rf *.toc *~ *.lot *.lof *.aux  *.log *.out *.bbl *.blg *.nav *.snm

.PHONY: clean

view: $(LATEX_FILE).pdf
	$(PDF_VIEWER) $(LATEX_FILE).pdf > ~/trash.out 2>&1 &

clean: 
	@rm -rf src/*~ img/#*
	@rm -rf rapport.pdf