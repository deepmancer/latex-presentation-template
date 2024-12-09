# Name of the main LaTeX file (without the .tex extension)
MAIN = main

# Intermediate and output files to clean up
INTERMEDIATE_FILES = $(MAIN).aux $(MAIN).bbl $(MAIN).bcf $(MAIN).blg $(MAIN).lof $(MAIN).log $(MAIN).lot $(MAIN).out $(MAIN).run.xml $(MAIN).toc $(MAIN).synctex.gz $(MAIN).fls $(MAIN).fdb_latexmk $(MAIN).nav $(MAIN).snm

OUTPUT_FILES = $(MAIN).pdf


.PHONY: all clean cleanall


# Main compilation rule
all: $(MAIN).pdf

# Rule to generate the PDF, including references
$(MAIN).pdf: $(MAIN).tex references.bib
	pdflatex $(MAIN).tex
	bibtex $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

# Clean up auxiliary files
clean:
	rm -f $(INTERMEDIATE_FILES)

# Clean up all generated files, including the PDF
cleanall: clean
	rm -f $(OUTPUT_FILES)