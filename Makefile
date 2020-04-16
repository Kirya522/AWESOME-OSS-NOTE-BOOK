COMPILER = latexmk --halt-on-error
ARGS = -pdf

all: pdfpages.pdf

pdfpages.pdf: notebook.pdf
	$(COMPILER) $(ARGS) pdfpages.tex

notebook.pdf: grid.pdf
	$(COMPILER) $(ARGS) notebook.tex

grid.pdf:
	$(COMPILER) $(ARGS) grid.tex

cleanall:
	$(COMPILER) -C

clean:
	$(COMPILER) -c
