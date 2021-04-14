#!/bin/bash 

pdf_folder=$1
jdk10=$2
batik_folder=$3
batik_version=$4
pdfbox_folder=$5
pdfbox_version=$6

var2='".:'$pdf_folder':'$pdf_folder$pdfbox_folder'/pdfbox-'$pdfbox_version'.jar:'$pdf_folder$pdfbox_folder'/fontbox-'$pdfbox_version'.jar:'$pdf_folder$pdfbox_folder'/jempbox-'$pdfbox_version'.jar:'$pdf_folder$pdfbox_folder'/preflight-'$pdfbox_version'.jar:'$pdf_folder$pdfbox_folder'/xmpbox-'$pdfbox_version'.jar:'$jdk10'/lib/classes.zip:'$jdk10':'$jdk10'/awt:'$pdf_folder$batik_folder'/batik-'$batik_version'.jar:"'

echo java $9 -classpath $var2  MergeBitmapInPDF $7 $8 

java $9 -classpath $var2  MergeBitmapInPDF $7 $8 
