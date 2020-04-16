COMPILER = latexmk --halt-on-error
BUILD_DIRECTORY = .build
ARGS = -pdf -output-directory=$(BUILD_DIRECTORY)

all: pdfpages.pdf

pdfpages.pdf: notebook.pdf
	$(COMPILER) $(ARGS) pdfpages.tex

notebook.pdf: grid.pdf
	$(COMPILER) $(ARGS) notebook.tex

grid.pdf:
	$(COMPILER) $(ARGS) grid.tex

cleanall:
	$(COMPILER) -C -output-directory=$(BUILD_DIRECTORY)

clean:
	$(COMPILER) -c -output-directory=$(BUILD_DIRECTORY)
