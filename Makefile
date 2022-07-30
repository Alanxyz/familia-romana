FILES := $(shell ls chapters/*.md)
FLAGS = --metadata-file=metadata.yaml --pdf-engine=xelatex

book:
	pandoc $(FILES) $(FLAGS) -o familia_romana.pdf

ebook:
	pandoc $(FILES) $(FLAGS) -o familia_romana.epub
