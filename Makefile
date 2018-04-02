TITLE = 2018_berkeley_txshift

.PHONY : $(TITLE).pdf
all: $(TITLE).pdf notes clean web

$(TITLE).pdf: $(TITLE).tex header.tex
	xelatex $(TITLE)
	bibtex $(TITLE)
	bibtex $(TITLE)
	xelatex $(TITLE)

notes: $(TITLE)_withnotes.pdf

clean:
	rm -f *.{aux,log,nav,out,snm,toc,vrb,bbl,blg}

$(TITLE)_withnotes.pdf: $(TITLE)_withnotes.tex header.tex
	xelatex $(TITLE)_withnotes
	bibtex $(TITLE)_withnotes
	bibtex $(TITLE)_withnotes
	xelatex $(TITLE)_withnotes
	pdfnup $(TITLE)_withnotes.pdf \
		--nup 1x2 --no-landscape --paper letterpaper --frame true --scale 0.9
	mv $(TITLE)_withnotes-nup.pdf $(TITLE)_withnotes.pdf

$(TITLE)_withnotes.tex: $(TITLE).tex Ruby/createVersionWithNotes.rb
	Ruby/createVersionWithNotes.rb $(TITLE).tex $(TITLE)_withnotes.tex

web: $(TITLE).pdf $(TITLE)_withnotes.pdf
	rsync --chmod=go+r $(TITLE).pdf \
		nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE).pdf
	rsync --chmod=go+r $(TITLE)_withnotes.pdf \
		nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE)_withnotes.pdf

