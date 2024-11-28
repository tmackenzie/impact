.PHONY: toc-ic toc-team toc

toc-ic:
	cd ic; \
	adr generate toc -p doc/adr/ > toc.md

toc-team:
	cd team; \
	adr generate toc -p doc/adr/ > toc.md

toc: toc-ic toc-team
	echo "generated table of contents"
