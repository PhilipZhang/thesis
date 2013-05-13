# Makefile for LaTeX
# by Isaac

FILENAME=thesis

default: ${FILENAME}.pdf

clean:
	-@git clean -fx -e "*.bib" -e "*.tex" -e "figures/*"

view: 
	-@exo-open ${FILENAME}.pdf 2>/dev/null &

edit:
	@vim -p `find . -name "*.tex" -o -name "*.bib"`

add:
	git add data/*
	git add ref/*
	git add ./*

################################################################################
pdflatex ${FILENAME}.aux: ${FILENAME}.tex
	-@echo "\033[32mpdflatex -interaction=nonstopmode $<\033[0m"
	-@pdflatex -interaction=nonstopmode $<

bibtex ${FILENAME}.bbl: ${FILENAME}.aux
	-@echo "\033[32mbibtex $<\033[0m"
	-@bibtex $<

latexagain:
	-@echo "\033[32mpdflatex -interaction=nonstopmode ${FILENAME}.tex\033[0m"
	-@pdflatex -interaction=nonstopmode ${FILENAME}.tex

latexlast:
	-@echo "\033[32mpdflatex ${FILENAME}.tex\033[0m"
	-@pdflatex ${FILENAME}.tex

${FILENAME}.pdf: pdflatex bibtex latexagain latexlast


