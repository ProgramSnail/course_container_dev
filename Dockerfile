FROM docker.io/purpurebacterium/course_env:latest

ENV PATH="$PATH:/root/.ghcup/bin"
ENV PATH="$PATH:/root/.cabal/bin"
ENV PATH="$PATH:/root/.opam/default/bin"

ENV OPAMSWITCH="default"
ENV OPAM_SWITCH_PREFIX="/root/.opam/default"
ENV OCAMLTOP_INCLUDE_PATH="/root/.opam/default/lib/toplevel"
ENV CAML_LD_LIBRARY_PATH="/root/.opam/default/lib/stublibs:/root/.opam/default/lib/ocaml/stublibs:/root/.opam/default/lib/ocaml"
ENV OCAML_TOPLEVEL_PATH="/root/.opam/default/lib/toplevel"
