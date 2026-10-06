TITLE = 2026_ebi_txshift

minimal: $(TITLE).pdf clean
all: $(TITLE).pdf web clean

$(TITLE).pdf: $(TITLE).tex header.tex
	xelatex $(TITLE)
	bibtex $(TITLE)
	xelatex $(TITLE)
	xelatex $(TITLE)

web: $(TITLE).pdf
	rsync --chmod=go+r $(TITLE).pdf \
		nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE).pdf

clean:
	rm -f $(addprefix $(TITLE), .aux .log .nav .out .snm .toc .vrb .bbl .blg)
