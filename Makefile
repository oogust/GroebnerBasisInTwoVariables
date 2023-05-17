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
	rm $(DOCNAME).blg $(DOCNAME).bbl $(DOCNAME).aux $(DOCNAME).log $(DOCNAME).out $(DOCNAME).bcf $(DOCNAME).nav $(DOCNAME).bib $(DOCNAME).run.xml $(DOCNAME).snm $(DOCNAME).toc