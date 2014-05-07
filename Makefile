
MAINTEX=padalreport
LATEXENGINE=pdflatex
BIBTEXENGINE=bibtex
OPEN=open

ieee : 
	$(LATEXENGINE) $(MAINTEX)
	$(BIBTEXENGINE) $(MAINTEX)
	$(LATEXENGINE) $(MAINTEX)
	$(LATEXENGINE) $(MAINTEX)
#	$(OPEN) $(MAINTEX).pdf &

update :
	$(LATEXENGINE) $(MAINTEX)
	$(OPEN) $(MAINTEX).pdf &

bib :
	$(BIBTEXENGINE) $(MAINTEX)

view :
	$(OPEN) $(MAINTEX).pdf &


clean :
	rm -f $(MAINTEX).aux *.aux $(MAINTEX).bbl $(MAINTEX).blg $(MAINTEX).log $(MAINTEX).lof $(MAINTEX).lot $(MAINTEX).out $(MAINTEX).toc $(MAINTEX)synctex.gz
	rm -f $(MAINTEX).pdf

realclean :
	make clean
	rm -f $(MAINTEX).pdf



