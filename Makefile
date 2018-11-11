all: draft


cols:
	mkdir -p out
	pdflatex -output-directory=out/ cols.tex
	mv out/cols.pdf .

draft:
	mkdir -p out
	pdflatex -output-directory=out/ draft.tex
	mv out/draft.pdf .


clean:
	rm out/*
	rm *.pdf
