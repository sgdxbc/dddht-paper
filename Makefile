SHELL=/bin/bash

LATEX := ./bin/latexrun --color auto -W no-overfull -W no-citation
PAPER := paper

TEX := $(shell find ./ -type f -name "*.tex")
CLS := $(shell find ./ -type f -name "*.cls" -o -name "*.sty")
BIB := $(shell find ./ -type f -name "*.bib")

PAPER_DEPS := $(TEX) $(CLS) $(BIB)

.PHONY: all clean

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER_DEPS)
	@rm -f $@
	$(LATEX) $(PAPER).tex -O .latex.out -o $@

clean:
	$(LATEX) --clean-all -O .latex.out
	rm -frv .latex.out $(PAPER).pdf
