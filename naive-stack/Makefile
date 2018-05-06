.PHONY: help clean build

help:
	@echo "help        Show this message"
	@echo "clean       Remove all artifacts"

clean:
	rm -f *.o *.cmo *.cmi *.cma a.out a.exe
	rm -rf _build/

build:
	ocamlc stack.mli
	ocamlc mylist.mli
	ocamlc mylist.ml
	ocamlc -a -o mylist.cma mylist.cmo
