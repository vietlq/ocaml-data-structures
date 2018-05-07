.PHONY: help clean build build-opt

help:
	@echo "help        Show this message"
	@echo "clean       Remove all artifacts"

clean:
	rm -f *.cmo *.cmi *.cma *.cmx *.cmxa
	rm -f *.o a.out a.exe *.a *.so *.dll *.dylib *.exe
	rm -rf _build/

build:
	ocamlc -c stack.mli
	ocamlc -c mylist.mli
	ocamlc -c mylist.ml
	ocamlc -c customstack.mli
	ocamlc -c customstack.ml
	ocamlc -a -o mylist.cma mylist.cmo
	ocamlc -o example.exe customstack.cmo mylist.cmo example.ml

build-opt:
	ocamlopt -c stack.mli
	ocamlopt -c mylist.mli
	ocamlopt -c mylist.ml
	ocamlopt -c customstack.mli
	ocamlopt -c customstack.ml
	ocamlopt -a -o mylist.cmxa mylist.cmx
	ocamlopt -o example.exe customstack.cmo mylist.cmo example.ml
