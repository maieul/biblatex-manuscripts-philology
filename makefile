FILES = *.bbx *.dbx *.lbx *.tex *.pdf README *.bib   makefile latexmkrc


dist: *tex
	latexmk *tex
	@$(RM) ../biblatex-manuscripts-philology.zip
	rm -rf biblatex-manuscripts-philology
	mkdir biblatex-manuscripts-philology	
	cp $(FILES) biblatex-manuscripts-philology
	zip -r ../biblatex-manuscripts-philology.zip  biblatex-manuscripts-philology
  
clean:
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

all: dist
