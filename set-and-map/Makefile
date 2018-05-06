.PHONY: help clean build build-opt

help:
	@echo "help        Show this message"
	@echo "clean       Remove all artifacts"

clean:
	rm -f *.cmo *.cmi *.cma *.cmx *.cmxa
	rm -f *.o a.out a.exe *.a *.so *.dll *.dylib *.exe
	rm -rf _build/

build:
	ocamlc -c set.mli
	ocamlc -c naivebst.mli
	ocamlc -c naivebst.ml
	ocamlc -c unbalanced_set.mli
	ocamlc -c unbalanced_set.ml
	ocamlc -a -o unbalanced_set.cma unbalanced_set.cmo
	ocamlc -o example.exe unbalanced_set.cma example.ml

build-opt:
	ocamlopt -c set.mli
	ocamlopt -c naivebst.mli
	ocamlopt -c naivebst.ml
	ocamlopt -c unbalanced_set.mli
	ocamlopt -c unbalanced_set.ml
	ocamlopt -a -o unbalanced_set.cmxa unbalanced_set.cmx
	ocamlopt -o example.exe unbalanced_set.cmxa example.ml
