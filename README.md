# Information Security

This is my journey from theoretical to practical aspects of information security.

## Repository layout

- `Mathematical-Preliminaries/` — number theory, algebra, probability, information theory, coding theory, complexity (LaTeX + Jupyter notebooks + Lean 4 proofs).
- `Cryptosystems/` — symmetric/asymmetric cryptosystems (LaTeX).
- `Public-Key-Infrastructure/` — PKI (LaTeX).
- `Transport-Layer-Security/` — TLS (LaTeX).
- `Network-Layers/` — network layer notes (LaTeX).
- `OpenSSL/` — OpenSSL notes (LaTeX).
- `Files/Style/` — shared LaTeX style (`InfoSec.sty`).
- `Bibliography/` — canonical `references.bib`.
- `Online-Resources/` — useful links.

## Building the LaTeX documents

Each chapter is a standalone `book`. From a chapter directory:

```sh
pdflatex <Name>.tex
bibtex <Name>   # or biber for Cryptosystems
pdflatex <Name>.tex
pdflatex <Name>.tex
```

Shared style is at `Files/Style/InfoSec.sty`; do not duplicate it.

## Python notebooks

```sh
cd Mathematical-Preliminaries/Python-Files
pip install -r requirements.txt
jupyter lab
```

## Lean 4 proofs

```sh
cd Mathematical-Preliminaries/Lean-Files
lake build
```

## License

MIT — see `LICENSE`.