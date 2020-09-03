#!/usr/bin/bash

counter=1
for line in $(<my_webpages.txt)  #cat file | while read line
do
    wget -O ~/trgn_wordcloud/current_pages/file$counter.html $line
    ((counter++))
done

echo "Successfully run for $USER";

html2text.py current_pages/file1.html > my_current1.txt
html2text.py current_pages/file2.html > my_current2.txt
html2text.py current_pages/file3.html > my_current3.txt
cat my_current1.txt my_current2.txt my_current3.txt > my_current.txt

wordcloud_cli --text my_current.txt --imagefile ~/public_html/image1.png --mask ~/public_html/jisoo.png --scale 0.25 --colormap pastel2
wordcloud_cli --text my_current.txt --imagefile ~/public_html/image2.png --mask ~/public_html/jennie.png  --scale 0.25 --colormap pastel2
wordcloud_cli --text my_current.txt --imagefile ~/public_html/image3.png --mask ~/public_html/rose.png --scale 0.25 --colormap pastel2  
wordcloud_cli --text my_current.txt --imagefile ~/public_html/image4.png --mask ~/public_html/lisa.png --scale 0.25 --colormap pastel2
