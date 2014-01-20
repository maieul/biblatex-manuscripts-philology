FILES = *.bbx *.dbx *.lbx documentation   makefile 


dist: all
	rm -rf biblatex-manuscript-philology
	mkdir biblatex-manuscript-philology
	cp *bbx *dbx *lbx *makefile biblatex-manuscript-philology
	mkdir biblatex-manuscript-philology/documentation
	cp documentation/*tex documentation/*bib documentation/*pdf documentation/makefile  biblatex-manuscript-philology/documentation
	$(RM) ../biblatex-manuscript-philology.zip
	zip -r ../biblatex-manuscript-philology.zip biblatex-manuscript-philology
	
	

clean:
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

all: documentation/example.tex documentation/biblatex-manuscripts-philology.tex documentation/example.bib
	$(MAKE) -C documentation all