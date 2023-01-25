TITLE = 2023_hsph_visitday

all: $(TITLE).pdf notes clean
minimal: $(TITLE).pdf clean

$(TITLE).pdf: $(TITLE).tex header.tex
	xelatex $(TITLE)
	bibtex $(TITLE)
	xelatex $(TITLE)
	xelatex $(TITLE)

notes: $(TITLE)_withnotes.pdf

$(TITLE)_withnotes.pdf: $(TITLE)_withnotes.tex header.tex
	xelatex $(TITLE)_withnotes
	bibtex $(TITLE)_withnotes
	bibtex $(TITLE)_withnotes
	xelatex $(TITLE)_withnotes
	xelatex $(TITLE)
	pdfjam $(TITLE)_withnotes.pdf \
		--nup 1x2 --no-landscape --paper letterpaper --frame true --scale 0.9
	mv $(TITLE)_withnotes-pdfjam.pdf $(TITLE)_withnotes.pdf

$(TITLE)_withnotes.tex: $(TITLE).tex Ruby/createVersionWithNotes.rb
	Ruby/createVersionWithNotes.rb $(TITLE).tex $(TITLE)_withnotes.tex

web: $(TITLE).pdf $(TITLE)_withnotes.pdf
	rsync --chmod=go+r $(TITLE).pdf \
		nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE).pdf
	rsync --chmod=go+r $(TITLE)_withnotes.pdf \
		nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE)_withnotes.pdf

clean:
	rm -f $(addprefix $(TITLE), .aux .log .nav .out .snm .toc .vrb .bbl .blg)
	rm -f $(addprefix $(TITLE)_withnotes, \
		.aux .log .nav .out .snm .toc .vrb .bbl .blg)
