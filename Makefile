LATEX := ./latexrun --color auto -W no-overfull -W no-citation
PAPER := paper

TEX := $(shell find ./ -type f -name "*.tex")
CLS := $(shell find ./ -type f -name "*.cls" -o -name "*.sty")
BIB := $(shell find ./ -type f -name "*.bib")
FIG := $(shell find ./ -type f -name "*.pdf")

PAPER_DEPS := $(TEX) $(CLS) $(BIB) $(FIG)

.PHONY: all clean

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER_DEPS)
	$(LATEX) $(PAPER).tex -o $@

clean:
	$(LATEX) --clean-all -O latex.out
	@ rm -frv $(PAPER).pdf
