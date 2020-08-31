#!/bin/bash
docker run --rm -it -p 4000:4000 -p 35729:35729 -v ${PWD}:/srv/jekyll jekyll/jekyll jekyll serve --livereload
