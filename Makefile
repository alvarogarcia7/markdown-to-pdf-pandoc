.PHONY: convert
convert: install
	docker run -it -v ${PWD}:/data pandoc -s -o /data/"${FILE}.pdf" /data/"${FILE}"

.PHONY: install
install:
	docker build -t pandoc .
