DOCNAME=report

all : $(DOCNAME) 

$(DOCNAME) : 
	pdflatex $(DOCNAME).tex
	bibtex $(DOCNAME)
	pdflatex $(DOCNAME).tex
	pdflatex $(DOCNAME).tex

view: $(DOCNAME)
	open $(DOCNAME).pdf

clean:
	rm *.blg *.bbl *.aux *.log *.out *.bcf *.nav *.bib *.run.xml *.snm *.toc