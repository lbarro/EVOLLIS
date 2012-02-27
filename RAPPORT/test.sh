#!/bin/sh

PDF_PRODUCER=pdflatex
BIB_PRODUCER=bibtex
INDEX_PRODUCER=makeindex
FORMAT_FILE=myIndexFormat
LATEX_FILE=NoSQL
TRASH="*.toc *~ *.lot *.lof *.aux  *.log *.out *.bbl *.blg *.nav *.snm *.idx *.ilg *.ind"

${PDF_PRODUCER} ${LATEX_FILE}.tex
${BIB_PRODUCER} ${LATEX_FILE}
${INDEX_PRODUCER} -s ${FORMAT_FILE} ${LATEX_FILE}
${PDF_PRODUCER} ${LATEX_FILE}.tex
${PDF_PRODUCER} ${LATEX_FILE}.tex
cp NoSQL.pdf ~/Dropbox/MongoDB/Rapport/
rm -rf ${TRASH}