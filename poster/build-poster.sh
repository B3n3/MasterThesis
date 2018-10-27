#!/bin/sh
# Copyright (C) 2014-2016 by Thomas Auzinger <thomas@auzinger.name>

# Replace the 'x' in the next line with the name of the poster ' main LaTeX document without the '.tex' extension
SOURCE=poster

# Build the poster
pdflatex -shell-escape $SOURCE
bibtex   $SOURCE
pdflatex -shell-escape $SOURCE
pdflatex -shell-escape $SOURCE
makeindex -t $SOURCE.glg -s $SOURCE.ist -o $SOURCE.gls $SOURCE.glo
makeindex -t $SOURCE.alg -s $SOURCE.ist -o $SOURCE.acr $SOURCE.acn
makeindex -t $SOURCE.ilg -o $SOURCE.ind $SOURCE.idx
pdflatex -shell-escape $SOURCE
pdflatex -shell-escape $SOURCE

echo
echo
echo Poster compiled.
