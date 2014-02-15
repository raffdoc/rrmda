all: rrmda.md rrmda.pdf rrmda.docx
 
rrmda.md: rrmda.Rmd
	Rscript -e "library(knitr); knit('rrmda.Rmd')"
 
rrmda.pdf: rrmda.md
	pandoc -H scicite.sty -V fontsize=12pt rrmda.md -o rrmda.pdf
 
rrmda.docx: rrmda.md
	pandoc -s -S --reference-docx=format.docx rrmda.md -o rrmda.docx