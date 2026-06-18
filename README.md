# SGGW-Thesis-Latex
The LaTeX class "SGGW-thesis.cls" together with the thesis "main.tex" written in LaTeX with the use of this class was created by Łukasz Adamczyk as the part of his engineer thesis in 2017. This repository is supposed to provide better versioning and ease of contribution.

The project is continuously maintained by several Authors. For detailed information on changes, which go far beyond the original thesis, see the main.pdf file, subsection "Zmiany" in the Appendix A "Poradnik pisania prac dyplomowych".

As it can be seen, the commands of the class are been named in English, but the thesis in LaTeX and the whole project is been written in Polish. An English version in the early stage of development can be found at "https://lchmiel.pl/stud.html#ClassLaTeXSGGW".

This project is also available at "https://lchmiel.pl/stud.html#KlasaLaTeXSGGW". 

# Basic instructions
## Changing thesis type header
To change the header containing thesis type, after the 
```latex
\documentclass{SGGW-thesis}
```

set one of the flags to true

```latex
\INZYNIERSKAtrue % set by default
```
```latex
\LICENCJACKAtrue
```
```latex
\MAGISTERSKAtrue
```

## Changing department footer
To change the footer containing the department, after the 
```latex
\documentclass{SGGW-thesis}
```

set one of the flags to true

```latex
\WZIMtrue % no other flags for departments exist right now
```
