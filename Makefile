# class file or etc.
MYTEXPATH=${HOME}/Documents/tex
# PDF file name
MAINTEX=wese2016_hisazumi
MAINTEXPR=wese2016_hisazumi_p
# template tex
TEMPLATE=wese_temp.tex
# markdown src
MDPATH=0title.md 1body.md
# Bib style
BIBSTYLE=${MYTEXPATH}/acm-sig-proceedings.csl
# Bib	
BIB=${MYTEXPATH}/library.bib

export TEXINPUTS=${MYTEXPATH}//:

all: ${MAINTEXPR}.pdf ${MAINTEX}.pdf

${MAINTEXPR}.pdf: ${MAINTEXPR}.md Makefile
	pandoc ${MAINTEXPR}.md -o ${MAINTEXPR}.pdf --latex-engine=xelatex -t beamer \
		-V theme:Berkeley -V colortheme:seahorse \
		--slide-level 2 -V toc=true  \
		-V classoption:aspectratio=169 \
		-V fontsize:15pt -H ~/Documents/tex/beamer-h-e.tex

${MAINTEX}.pdf: ${TEMPLATE} ${BIB} ${MDPATH} ${BIBSTYLE} image/*
	sed -e 's/^%%.*$$//' ${MDPATH} \
	| /usr/local/bin/pandoc \
		--latex-engine=/Library/TeX/texbin/xelatex \
		--template=${TEMPLATE} \
		--filter=pandoc-crossref \
		--filter=pandoc-citeproc \
		--bibliography=${BIB} \
		--csl=${BIBSTYLE} \
		-o ${MAINTEX}.pdf

${MAINTEX}.tex: ${TEMPLATE} ${BIB} ${MDPATH} ${BIBSTYLE}
	sed -e 's/^%%.*$$//' ${MDPATH} \
	| /usr/local/bin/pandoc \
		--template=${TEMPLATE} \
		--filter=pandoc-citeproc \
		--bibliography=${BIB} \
		--csl=${BIBSTYLE} \
		-o ${MAINTEX}.tex

clean:
	rm -f ${MAINTEX}.pdf
	