PDF_PRODUCER=pdflatex
LATEX_FILE=rapport
PDF_VIEWER=evince
VERSION=00.00.00

all: $(LATEX_FILE)$(VERSION).tex
	$(PDF_PRODUCER) $(LATEX_FILE)_$(VERSION).tex
	$(PDF_PRODUCER) $(LATEX_FILE)_$(VERSION).tex 

$(LATEX_FILE)$(0VERSION).tex:
	cp $(LATEX_FILE).tex $(LATEX_FILE)_$(VERSION).tex

PHONY: clean view do_anyway

do_anyway: 

view: do_anyway
	$(PDF_VIEWER) $(LATEX_FILE)_$(VERSION).pdf > ~/trash.out 2>&1 &

clean: do_anyway
	@rm -rf *.toc *~ *.lot *.lof *.aux  *.log *.out *.bbl *.blg *.nav *.snm
	@rm -rf src/*~ img/#*


