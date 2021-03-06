.PHONY: all
all: clean dist

main.html:
	asciidoctor main.adoc

.PHONY: dist
dist: main.html
	mkdir -p ./dist
	mkdir -p ./dist/img
	cp ./main.html ./dist/index.html
	cp -r ./img/. ./dist/img


.PHONY: clean
clean:
	rm -rf ./dist/ ./main.html
