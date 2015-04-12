
COLOR= #-V colortheme:darksol
all: mfunkcje.pdf # change to funkcje.pdf if you don't have beamer mtheme installed

funkcje.pdf:
	pandoc -t beamer -V theme:Boadilla  funkcje.md -o funkcje.pdf 

mfunkcje.pdf: funkcje.md Makefile
#  pandoc -t beamer -s --latex-engine=xelatex -V theme:m  funkcje.md -V colortheme:darksol -o funkcje.pdf 
	pandoc -t beamer -s --latex-engine=xelatex -V theme:m  funkcje.md $(COLOR) -o funkcje.pdf 

clean:
	-rm -f *.aux *.snm *.nav *.out *.toc
