###########################################################################
#
#	Makefile by Michael Hahsler
#
###########################################################################

NAME =  hahsler_publications

###########################################################################

all: publ talks clean

talks:
	./updatetalks.sh

publ:
	./updatebib.pl

pdf: 
	/usr/bin/bib2bib -c '$$type = "ARTICLE"' -ob tmp.bib hahsler.bib
	sed -e "s/url.*$$//i" < tmp.bib > articles.bib
	pdflatex $(NAME).tex
	bibtex $(NAME)
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex
	rm tmp.bib


clean:
	rm -f $(NAME).blg
	rm -f $(NAME).log
	rm -f $(NAME).aux
	rm -f $(NAME).bbl
	#rm *.html

