build:
	pandoc `ls chapters/*.md` -o familia_romana.pdf --metadata-file=metadata.yaml
