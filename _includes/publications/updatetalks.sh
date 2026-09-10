#!/bin/sh



bibtex2html -nf PDF "slides (pdf)" -nf URL "slides (html)" -nodoc -nobibsource -r -d hahsler_talk.bib
cat hahsler_talk.html | grep -v -a "<hr>" | grep -v -a "filliatr" > talks.md





