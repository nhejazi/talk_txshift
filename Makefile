TITLE = 2026_ebi_txshift
LATEXMK = latexmk -xelatex -interaction=nonstopmode -halt-on-error

.PHONY: minimal all web clean FORCE

minimal: $(TITLE).pdf clean
all: minimal web

# latexmk tracks its own dependencies (.tex, .bib, figures) and reruns
# xelatex/bibtex as needed, so always hand control to it
$(TITLE).pdf: FORCE
	$(LATEXMK) $(TITLE)

web: $(TITLE).pdf
	rsync --chmod=go+r $(TITLE).pdf \
		nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE).pdf

clean:
	latexmk -c $(TITLE)
	rm -f $(addprefix $(TITLE), .nav .snm .vrb .bbl .xdv)
