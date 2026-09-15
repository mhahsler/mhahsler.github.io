#!/bin/sh

bibtex2html -nf PDF "slides (pdf)" -nf URL "slides (html)" \
   -nodoc -nobibsource -r -d hahsler_talk.bib

sed -n -e '/<table>/,/<\/table>/ { s#</table>.*#</table>#; p; }' \
   hahsler_talk.html > talks.md
