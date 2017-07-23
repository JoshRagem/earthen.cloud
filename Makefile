
all : objects/index.html objects/error.html
.PHONY : all objects/index.html objects/error.html

objects/index.html :
	bin/build.sh template.index objects/index.html

objects/error.html :
	bin/build.sh template.error objects/error.html
