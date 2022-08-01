FILES := $(shell ls chapters/*.md)
FLAGS = --metadata-file=metadata.yaml

book:
	pandoc $(FILES) $(FLAGS) \
		--pdf-engine xelatex \
		\
		--include-in-header includes/in_header.tex \
		--include-before-body includes/before_body.tex \
		--include-after-body includes/after_body.tex \
		\
		-o familia_romana.pdf

ebook:
	pandoc $(FILES) $(FLAGS) -o familia_romana.epub

plaintext:
	pandoc $(FILES) $(FLAGS) -o familia_romana.md

tex:
	pandoc $(FILES) $(FLAGS) -o familia_romana.tex
