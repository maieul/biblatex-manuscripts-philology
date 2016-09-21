FILES = *.bbx *.dbx *.lbx documentation   makefile README


dist: all
	rm -rf biblatex-manuscripts-philology
	mkdir biblatex-manuscripts-philology
	ln README *bbx *dbx *lbx *makefile biblatex-manuscripts-philology
	mkdir biblatex-manuscripts-philology/documentation
	ln documentation/*tex documentation/*bib documentation/*pdf documentation/makefile  biblatex-manuscripts-philology/documentation
	$(RM) ../biblatex-manuscripts-philology.zip
	zip -r ../biblatex-manuscripts-philology.zip biblatex-manuscripts-philology


clean:
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

all: documentation/biblatex-manuscripts-philology-example.tex documentation/biblatex-manuscripts-philology.tex documentation/biblatex-manuscripts-philology-example.bib
	$(MAKE) -C documentation all