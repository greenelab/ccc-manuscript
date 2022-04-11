#!/bin/bash

# The code is also in: https://www.overleaf.com/read/dsyjdrdjqjcp

latexmk -pdf ccc_algorithm.tex
pdfcrop ccc_algorithm.pdf ccc_algorithm.pdf
pdf2svg ccc_algorithm.pdf ccc_algorithm.svg

