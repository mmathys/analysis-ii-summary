all: draft


cols:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=/tmp lean.tex
	pdfnup -o out/lean.pdf /tmp/lean.pdf
	mv out/lean.pdf .

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
