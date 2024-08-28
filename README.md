# Easy-Hypertext-Markup
EHTM is a langauge for building static webpages that complies to HTML and CSS. Compiled using a Haskell program. 

# Build Tool
We are using Cabal as our primary build tool. Cabal can be installed with:
```
sudo apt install cabal-install
```
# Stucture
A program is stuctured by a series of statements, ended with a semi-colon. For example a simple statement would be:
```
new paragraph at (1,1) content "lorem ipsum";
```
The syntax is made to be human readable but simple and easily parsable. 
The file is complied to HTML. The previous line would read the following in HTML.
```
<p style="top = 1; left = 1;"> lorem ipsum </p>
```

# Feature Summary V1 (WIP)
* Create new elements(headers and paragraphs) using the 'new' keyword
* Set postion of an element using 'at' keyword
  * given a point '(x,y)'
  * given a keyword (center, top, right, left, bottom) 
* set atributues(color) using 'with <attribute>' 
