#!/bin/bash
# https://tex.stackexchange.com/questions/270755/passing-arguments-to-latex-file

rm -rf out/
mkdir out

pairs=(
	"green 5ebd3e"
	"yellow ffb900"
	"orange f78200"
	"red e23838"
	"purple 973999"
	"blue 009cdf"
)

for pair in "${pairs[@]}"; do
	color=$(echo $pair | awk '{ print $1 }')
	hex=$(echo $pair | awk '{ print $2 }')
	mkdir out/$color
	pdflatex \
		-jobname gerol-resume \
		-output-directory out/$color/ \
		"\\def\\accentHex{$hex}\\include{resume}"
	rm -rf out/$color/gerol-resume.{aux,bcf,dvi,log,run.xml,out}
done
