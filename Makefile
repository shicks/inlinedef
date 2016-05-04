.PHONY: clean test

test: inlinetest.tex
	latex inlinetest.tex

inlinetest.tex inlinedef.sty: inlinedef.dtx inlinedef.ins
	latex inlinedef.ins

inlinedef.pdf: inlinedef.dtx
	pdflatex inlinedef.dtx

clean:
	rm -f `cat .gitignore`
