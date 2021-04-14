set pdf_folder=%1
set jdk10=%2
set batik_folder=%3
set batik_version=%4
set pdfbox_folder=%5
set pdfbox_version=%6

%jdk10%\bin\java -classpath ".;%pdf_folder%;%pdfbox_folder%\pdfbox-%pdfbox_version%.jar;%pdfbox_folder%\fontbox-%pdfbox_version%.jar;%pdfbox_folder%\jempbox-%pdfbox_version%.jar;%pdfbox_folder%\preflight-%pdfbox_version%.jar;%pdfbox_folder%\xmpbox-%pdfbox_version%.jar;%jdk10%\lib\classes.zip;%jdk10%;%jdk10%\awt;%batik_folder%\batik-%batik_version%.jar;" "-Xmx1024m" SplitPDF %7 %8 %9

