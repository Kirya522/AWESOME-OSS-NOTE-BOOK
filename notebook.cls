\ProvidesClass{notebook}

\LoadClass{book}


\newcommand{\insertpage}[1]{
    \mbox{}
    \newcount\foo
    \foo=#1
    \advance \foo -1
    \loop
        \clearpage
        \mbox{}
        \advance \foo -1
    \ifnum \foo>0
    \repeat
}