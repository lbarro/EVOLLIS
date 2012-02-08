PDF_PRODUCER=pdflatex
LATEX_FILE=rapport
PDF_VIEWER=evince
#VERSION=`date | tr -s ' ' '_' | tr -d ','`

PHONY: all view clean

#all: $(LATEX_FILE)_$(VERSION).tex
	#$(PDF_PRODUCER) $(LATEX_FILE)_$(VERSION).tex
	#$(PDF_PRODUCER) $(LATEX_FILE)_$(VERSION).tex
all: $(LATEX_FILE).tex
	$(PDF_PRODUCER) $(LATEX_FILE).tex
	$(PDF_PRODUCER) $(LATEX_FILE).tex

#$(LATEX_FILE)_$(VERSION).tex:
#	@cp $(LATEX_FILE).tex $(LATEX_FILE)_$(VERSION).tex

view: 	
	#$(PDF_VIEWER) $(LATEX_FILE)_$(VERSION).pdf > ~/trash.out 2>&1 &
	$(PDF_VIEWER) $(LATEX_FILE).pdf > ~/trash.out 2>&1 &

clean: 
	@rm -rf *.toc *~ *.lot *.lof *.aux  *.log *.out *.bbl *.blg *.nav *.snm
	@rm -rf src/*~ img/#*


