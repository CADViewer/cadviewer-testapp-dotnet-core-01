#!/bin/bash 

pdf_folder=$1
jdk10=$2
batik_folder=$3
batik_version=$4
pdfbox_folder=$5
pdfbox_version=$6

var2='".:'$pdf_folder':'$pdfbox_folder'/pdfbox-'$pdfbox_version'.jar:'$pdfbox_folder'/fontbox-'$pdfbox_version'.jar:'$pdfbox_folder'/jempbox-'$pdfbox_version'.jar:'$pdfbox_folder'/preflight-'$pdfbox_version'.jar:'$pdfbox_folder'/xmpbox-'$pdfbox_version'.jar:'$jdk10'/lib/classes.zip:'$jdk10':'$jdk10'/awt:'$batik_folder'/batik-'$batik_version'.jar:"'

java -Xmx1024m -classpath $var2  PdfToSvg_Pages $7 $8 $9

