all: draft


cols:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=out/ cols.tex
	mv out/cols.pdf .

draft:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=out/ draft.tex
	mv out/draft.pdf .

twocolumn:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=out/ twocolumn.tex
	mv out/twocolumn.pdf .

clean:
	rm out/*
	rm *.pdf
