FILES := $(shell ls chapters/*.md)
FLAGS = --metadata-file=metadata.yaml

book:
	pandoc $(FILES) $(FLAGS) -o familia_romana.pdf

ebook:
	pandoc $(FILES) $(FLAGS) -o familia_romana.epub
