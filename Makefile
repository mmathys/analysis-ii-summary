all: draft

# compile lean 3 to 1 with border (scaled 0.95)
three:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=/tmp lean.tex
	pdfnup --nup 3x1 --scale 0.95 -o out/three.pdf /tmp/lean.pdf
	mv out/three.pdf .

# compile lean 3 to 1 without border
three-borderless:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=/tmp lean.tex
	pdfnup --nup 3x1 -o out/three.pdf /tmp/lean.pdf
	mv out/three.pdf . 

# compile lean as 1 to 1
cols:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=/tmp lean.tex
	pdfnup -o out/lean.pdf /tmp/lean.pdf
	mv out/lean.pdf .

# compile draft
draft:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=out/ draft.tex
	mv out/draft.pdf .

clean:
	rm out/*
	rm *.pdf
