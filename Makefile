TITLE = 2023_celehs_txshift

all: $(TITLE).pdf clean

$(TITLE).pdf: $(TITLE).tex
	xelatex $(TITLE)
	bibtex $(TITLE)
	xelatex $(TITLE)
	xelatex $(TITLE)

web: $(TITLE).pdf
	rsync --chmod=go+r $(TITLE).pdf \
		nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE).pdf

clean:
	rm -f $(addprefix $(TITLE), .aux .log .nav .out .snm .toc .vrb .bbl .blg)
	rm -f $(addprefix $(TITLE)_withnotes, \
		.aux .log .nav .out .snm .toc .vrb .bbl .blg)
