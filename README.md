# trgn_wordcloud
  
## About the app
  **The app will summarize three webpages 9am every day.**

## Installation & Usage
Html2text is for converting .html files to text. 
1. `cd` into ~/bin directory.
2. Clone a new directory from a repository.
3. To use html2text move .py package into ~/bin directory.
  <pre> 
  cd ~/bin
  git clone https://github.com/aaronsw/html2text
  cd html2text
  mv html2text.py ~/bin/.
  </pre>
## Dependencies
#### Create a wordcloud image
1. Install wordcloud.
    <pre>
    cd ~/bin 
    git clone https://github.com/amueller/word_cloud.git
    cd word_cloud</pre>
    *Install locally*
    <pre>
    python -m pip install --user wordcloud</pre>
2. Create the image.
    <pre>
    wordcloud_cli --text file --imagefile file</pre>
#### Create a webpage
1. Create index.html.
```
  <!DOCTYPE html>
  <html lang="en">
  <head>
   <meta charset="utf-8">
   <title>My Wordcloud</title>
   <style>
     body{text-align:center}
   </style>
  </head>
  <body>
   <h1> Wordcloud summary</h1>
    <img src="myimage.png"></img>
  </body>
  </html>
```
2. Run automatically. 
  <pre>
  crontab -e</pre>

## Contact
  <ruocenso@usc.edu>
