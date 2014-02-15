all: rrmda.md rrmda.pdf rrmda.docx
 
rrmda.md: rrmda.Rmd
	Rscript -e "library(knitr); knit('rrmda.Rmd')"
 
rrmda.pdf: rrmda.md
	pandoc -H format.sty -V fontsize=12pt rrmda.md -o rrmda.pdf
 
rrmda.docx: rrmda.md
	pandoc -s -S -V fontsize=12pt rrmda.md -o rrmda.docx
	pandoc -s rrmda.html -o rrmda.docx
clean:
	@-rm -r *.md 