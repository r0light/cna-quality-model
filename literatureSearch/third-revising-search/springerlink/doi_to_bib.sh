#!/bin/bash

# TODO: write complete bash scrapt to transform csv export to bib File
# 1. Extract column "DOI 2. remove unnecessary whitespaces 3. curl bib entries

while read doi; do
  echo "Found DOI: $doi"
  trimmeddoi="$(echo $doi | xargs)"
  #echo "https://doi.org/$doi"
  curl -LH "Accept: application/x-bibtex; charset=utf-8" "https://doi.org/$trimmeddoi" >> result.bib;
done <dois.txt
