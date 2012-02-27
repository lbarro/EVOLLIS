PDF_PRODUCER=pdflatex
BIB_PRODUCER=bibtex
INDEX_PRODUCER=makeindex
FORMAT_FILE=../RAPPORT/myIndexFormat
LATEX_FILE=CR
SRC=CR.tex ../RAPPORT/bibliographie.bib ../RAPPORT/myIndexFormat.ist ../RAPPORT/src/*.tex
PDF_VIEWER=evince
TRASH= *.toc *~ *.lot *.lof *.aux  *.log *.out *.bbl *.blg *.nav *.snm *.idx *.ilg *.ind

all: $(LATEX_FILE).pdf view

$(LATEX_FILE).pdf: $(SRC)
	$(PDF_PRODUCER) $(LATEX_FILE).tex
	$(BIB_PRODUCER) $(LATEX_FILE)
	$(INDEX_PRODUCER) -s $(FORMAT_FILE) $(LATEX_FILE)
	$(PDF_PRODUCER) $(LATEX_FILE).tex
	$(PDF_PRODUCER) $(LATEX_FILE).tex
	@rm -rf $(TRASH)

.PHONY: clean

view: $(LATEX_FILE).pdf
	$(PDF_VIEWER) $(LATEX_FILE).pdf > ~/trash.out 2>&1 &

clean: 
	@rm -rf $(TRASH)
	@rm -rf ../RAPPORT/src/*~ ../RAPPORT/src/#* ../RAPPORT/img/#*
	@rm -rf CR.pdf