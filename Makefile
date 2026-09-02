.PHONY: all cv resume clean

all: cv resume

cv:
	pdflatex -interaction=nonstopmode -halt-on-error cv.tex
	pdflatex -interaction=nonstopmode -halt-on-error cv.tex

resume:
	pdflatex -interaction=nonstopmode -halt-on-error resume.tex
	pdflatex -interaction=nonstopmode -halt-on-error resume.tex

clean:
	rm -f cv.aux cv.log cv.out resume.aux resume.log resume.out
