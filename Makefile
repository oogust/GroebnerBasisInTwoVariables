DOCNAME=report
PRESENTATION=slides

all : $(DOCNAME) 

$(DOCNAME) : 
	pdflatex $(DOCNAME).tex
	bibtex $(DOCNAME)
	pdflatex $(DOCNAME).tex
	pdflatex $(DOCNAME).tex

$(PRESENTATION) : 
	pdflatex $(PRESENTATION).tex
	bibtex $(PRESENTATION)
	pdflatex $(PRESENTATION).tex
	pdflatex $(PRESENTATION).tex

view: $(DOCNAME)
	open $(DOCNAME).pdf

clean-$(DOCNAME):
	rm $(DOCNAME).blg $(DOCNAME).bbl $(DOCNAME).aux $(DOCNAME).log $(DOCNAME).out $(DOCNAME).bcf $(DOCNAME).nav $(DOCNAME).bib $(DOCNAME)-blx.bib $(DOCNAME).run.xml $(DOCNAME).snm $(DOCNAME).toc

clean-$(PRESENTATION) : 
	rm $(PRESENTATION).blg $(PRESENTATION).bbl $(PRESENTATION).aux $(PRESENTATION).log $(PRESENTATION).out $(PRESENTATION).bcf $(PRESENTATION).nav $(PRESENTATION).bib $(PRESENTATION)-blx.bib $(PRESENTATION).run.xml $(PRESENTATION).snm $(PRESENTATION).toc

clean : 
	make clean-$(DOCNAME) clean-$(PRESENTATION)