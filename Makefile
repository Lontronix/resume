default: all clean

all: resume.tex sidebar.tex
	pdflatex -jobname Resume resume.tex
	open Resume.pdf

clean:
	rm -rf Resume.{aux,bcf,dvi,log,run.xml,out}
	rm -rf q.log

purge: clean
	rm -rf Resume.pdf
	git clean -fX

publish: default
	cp Resume.pdf ~/Desktop/Gerol_Resume_`date +"%m_%d_%Y"`.pdf
