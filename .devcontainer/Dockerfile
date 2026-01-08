FROM docker.io/purpurebacterium/course_env:latest

ENV PATH="$PATH:oot/.ghcup/bin" # Haskell
ENV PATH="$PATH:/root/.cabal/bin" # Haskell
ENV PATH="$PATH:/root/.opam/default/bin" # OCaml

ENV OPAMSWITCH="default" # OCaml
ENV OPAM_SWITCH_PREFIX="/root/.opam/default" # OCaml
ENV OCAMLTOP_INCLUDE_PATH="/root/.opam/default/lib/toplevel" # OCaml
ENV CAML_LD_LIBRARY_PATH="/root/.opam/default/lib/stublibs:/root/.opam/default/lib/ocaml/stublibs:/root/.opam/default/lib/ocaml" # OCaml
ENV OCAML_TOPLEVEL_PATH="/root/.opam/default/lib/toplevel" # OCaml

# alternative variant (?)
# RUN "eval $(opam env --switch=default --set-switch)"
