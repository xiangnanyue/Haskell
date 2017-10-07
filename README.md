#0.if you want to know about functional programming theory,
read curryHoward.pdf, the lecture note in french.

#1.a course of wsu
https://courses.cs.washington.edu/courses/cse341/08au/haskell/

#2.to install the stack of haskell
https://docs.haskellstack.org/en/stable/README/
#3.a course about haskell of Stanford
http://www.scs.stanford.edu/16wi-cs240h/
#4.a course about haskell in upenn
https://www.seas.upenn.edu/~cis194/fall16/

#5 if you want to start from scratch, read this
http://learnyouahaskell.com/starting-out#an-intro-to-lists
#6.if you want to read a book about haskell, read this
http://book.realworldhaskell.org/read/

# run
you can either use 
>ghc --make hello
>./hello
to compile and execute the code hello.hs

or use ghci to load and execute the code interactively
>ghci hello.hs
>main

Tips:
you can open some tabs in chrome, in haskell_tabs.txt
by pasting and running the following codes:

>while read A; do
>        echo "open", $A
>        open -a /Applications/Google\ Chrome.app $A
>done < $@

