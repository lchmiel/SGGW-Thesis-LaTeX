%
% Klasa do pisania prac dyplomowych w SGGW - licencjackich, inzynierskich i magisterskich.
%

\newcommand{\SGGWthesisVersion}{1.085}

% Wersja 1.085 z 2026.06.21
% Autor: Leszek Chmielewski inspirowany pracą mgr Wiktora Jaworskiego
% Zmiany:
% 1. podstawowy \hypersetup{} przenesiony do klasy,
%    dodane hidelinks aby linki nie miały kolorowych ramek

% Wersja 1.084 z 2026.06.19
% Autor: Leszek Chmielewski
% Zmiany:
% 1. Poprawki w komendach \edreminfo, \edreminfoPL i \keysinfoPL.

% Wersja 1.083 z 2026.06.18
% Autor: Leszek Chmielewski
% Zmiany:
% 1. W komendzie \keysinfoPL, która powoduje wypisanie informacji o używaniu kluczy
%    w Poradniku, zmieniono odnośniki do literatury na adres w GitHub podany jawnie.

% Wersja 1.082 z 2026.06.17
% Autor: Leszek Chmielewski
% Zmiany:
% 1. Uściślenia w komendzie \keysinfoPL, która powoduje wypisanie informacji o tym,
%    jak używać kluczy z poradnika będącego Dodatkiem do wzorcowej pracy dyplomowej.
% 2. W uwagach i komentarzach do zmian językiem domyślnym jest polski.

% Wersja 1.081 z 2026.06.12
% Autor: Leszek Chmielewski
% Zmiany:
% 1. Drobne retusze, nie wpływające na działanie klasy.

% Wersja 1.080 z 2026.06.08
% Autor: Leszek Chmielewski
% Zmiany:
% 1. Włączenie do klasy całego mechanizmu dodawania uwag do pracy
%    wzorowanego na mechanizmie z MG&V.
%    Dotąd uwagi wymagały dodania pakietu lchmiel.sty, teraz to jest niepotrzebne.
% 2. Dodanie komendy \keysinfoPL, która powoduje wypisanie informacji o tym,
%    jak używać kluczy z poradnika będącego Dodatkiem do wzorcowej pracy dyplomowej.
%    Jest to pierwsze nawiązanie w klasie do Poradnika.
% 3. Dodanie pakietu [bottom]footmisc, aby przypisy były zawsze na dole strony, pod środowiskami pływającymi

% Wersja 1.072 z 2026.05.22
% Autor: Leszek Chmielewski
% Zmiany:
% 1. Dodanie pakietu [nocompress]cite, aby pozycje literatury były sortowane,
%    ale nie kompresowane, np. 1, 2, 3, 5 a nie nie 1-3, 5.
% 2. Pakiety url i hyperref z opcjami dla dzielenia \url{} na wiele linii, więcej niż dwie
% 3. Dodanie pakietu doi, aby pozycje z DOI były aktywnymi linkami.
% Te trzy pozycje muszą być dodane na końcu pliku klasy, inaczej sa błędy w wewnęrznych linkach dokumentu.
% 4. Definicje skróconych nazw użytecznych komend: \usp, \on, \ud, \tbs, \mbs, \bs

% Wersja 1.071c z 2026.04.16
% Autor: Leszek Chmielewski
% Zmiana:
% 1. Zmiana tytułu rozdzialu zawierającego bibliografię z domyślnego dla języka
%    polskiego "Spis literatury" na "Bibliografia".

% Wersja 1.071b z 2026.01.21
% Autor: Leszek Chmielewski
% Zmiana:
% 1. Zmiana poziomu podrozdziałów, które będą numerowane, z domyślnego 2 na 3.
%    Zatem, będą numerowane i umieszczone w spisie treści: \chapter, \section, \subsection, \subsubsection.
%    Nie będą numerowane i nie będą umieszczone w spisie treści: \paragraph, \subparagraph.
%    Ma to zastosowanie w Dodatku, ktory jest w przygotowaniu.

% Wersja 1.071a z 2025.01.12
% Autor: Leszek Chmielewski
% Zmiana:
% 1. Dodana kropka w oświadczeniu autora pracy, akapit pierwszy.

% Wersja 1.071 z 2024.11.05
% Autor: Leszek Chmielewski
% Zmiany:
% 1. Drobny retusz w umieszczeniu zmiennej z numerem wersji na początku dokumentu.
% 2. Uaktualniony komentarz w \ProvidesClass{}[]
% 3. Retusze w źródle main.tex uaktualniające opis dla nowszej wersji klasy.

% Wersja 1.07 z 2024.10.22 i 2024.11.04
% Autorzy: Leszek Chmielewski, Dawid Puszka
% Zmiany:
% 1. Poprawka polegająca na dodaniu pakietu "lmodern" w takm celu, aby
%    w dokumencie PDF były użyte naturalne polskie czcionki, zamiast
%    dostawiania polskich znaków diakrytycznych do liter łacińskich,
%    co powodowało, że widok dokumentu był prawidłowy, lecz kopiowanie
%    tekstu powodowało rozdzielanie polskich liter i znaków diakrytycznych.
% 2. Rezygnacja z reprezentacji polskich liter makrami LaTeXa na rzecz UTF8.
% 3. Bibliografia jest umieszczana w spisie treści jako pozycja nienumerowana.
%    Zarządzenie Rektora tego nie normuje, ale jest to przyjęty zwyczaj.
% 4. Uporządkowanie kolejności wczytywania pakietów.
% 5. Dodanie w przykładowej pracy "main.tex", dostarczanej wraz z klasą,
%    notatek informujących o zgodności klasy z Zarządzeniami Rektora SGGW
%    i o poprawkach redaktorskich względem oryginalnej pracy.
% 6. Obecnie zarządzenie Rektora i wytyczne podane są na stronie:
%    https://www.sggw.edu.pl/studenci/praca-dyplomowa/

% Wersja 1.062 z 2023.07.31
% Autorzy: Konrad Jażdżyk, Patryk Stępień
% Zmiana:
% 1. Poprawka wielkości marginesów.

% Wersja 1.061 z 2022.01.26
% Autor: Leszek Chmielewski
% Zmiany:
% 1. Drobny retusz na stronie oświadczeń promotora i autora: "Świadom" -> "Świadom/a".
% 2. W rzeczywistości nowe zarządzenie Rektora i wytyczne podane są na stronie:
%    https://www.sggw.edu.pl/strona-glowna/studia/informacje-praktyczne-dla-studentow/praca-dyplomowa/

% Wersja 1.06 z 2021.11.14
% Autorzy: Mikołaj Tkaczyk, Mikołaj Piekutowski
% Zmiany:
% 1. Zmiana strony tytułowej, aby zgadzała się z Zarządzeniem Rektora SGGW nr 100 z dnia 22 września 2021 r.
% http://student.wzim.sggw.pl/wp-content/uploads/2015/10/Zarz%C4%85dzenie-Nr-100-Rektora-SGGW-z-dnia-22-wrze%C5%9Bnia-2021-r.-wytyczne-dotycz%C4%85ce-przygotowywania-prac-dyplomowych.pdf
% 2. Możliwość ustawienia nagłówka strony tytułowej za pomocą ustawienia flag INZYNIERSKA, LICENCJACKA lub MAGISTERSKA.
% 3. Dodanie warunkowego ustawiania stopki strony tytułowej, kontrolowanej na razie przez jedną flagę WZIM.
% 4. Zmiana wersji na zmienną, aby dynamicznie wyświetlała się w notce strony tytułowej.
% 5. Zmiany te wymagały dodania dodatkowych plików obrazów, które muszą być umieszczone w tym samym katalogu, co plik klasy.

% Wersja 1.05 z 2019.06.25
% Autorzy: Pawel Wasil, Bartosz Sowa
% Zmiany:
% 1. Zmiana \onehalfspacing na \setstretch{1.4} - dzieki temu interlinia jest niemal identyczna jak w wersji w Word, czyli odstęp 1.5.
%
% Wersja 1.04 z 2018.01.17.
% Autorzy: Pawel Wasil, Michal Rosa
% Wspolpraca: Leszek Chmielewski
% Zmiany:
% 1. Poprawiono blad wielkosci czcionki tytulu pracy.
% 2. Drobne retusze w formatach

% Wersja 1.03 z 2018.01.10.
% Autor: Łukasz Adamczyk
% Zmiany:
% 1. Poprawiono blad zwiazany z odstepami linii tekstu tytulu polskiego i angielskiego.

% Wersja 1.02 z 2018.01.08.
% Autor: Leszek Chmielewski <leszek_chmielewski@sggw.pl>
% Wspolpraca: Michal Rosa, Pawel Wasil
% Zmiany:
% 1. Poprawka w wielkosciach czcionek na pierwszych stronach.
% 2. Poprawka w wielkosci interlinii - teraz jest 1.5 poza stronami: tytulowa i oswiadczen.
% 3. Globalne zmniejszenie odstepow w listach - enumerate, itemize, description.
%    Zastosowano pakiet "enumitem". Jesli jest taka potrzeba, mozna korzystac
%    z jego opcji globalnie (w preambule) lub w konkretnych listach.
%    Moze to byc potrzebne w listach wielopoziomowych.
% 4. Koncowe oswiadczenie bedzie na stronie przedostatniej, zawsze nieparzystej.
%    Ta strona i otaczajace ja puste strony nie beda numerowane.

% Wersja 1.01 z 2017.12.13.
% Autor: Leszek Chmielewski <leszek_chmielewski@sggw.pl>
% Zmiany:
% 1. Poprawka stylu podpisow rys i tab. Zastosowano pakiet "caption".

% Wersja 1.0 z 2017.01.16.
% Autor: Łukasz Adamczyk
%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{SGGW-thesis}[2024/11/05 LaTeX class for writing theses in Polish at WULS-SGGW]


\DeclareOption{multip}{\@multiptrue}
\DeclareOption{onep}{\@multipfalse}

\newif\if@multip
\ExecuteOptions{multip}
\@multipfalse

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\DeclareOption*{}
\ProcessOptions*\relax
\LoadClass[12pt,notitlepage,twoside]{report}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{mathptmx} %czcionka Times New Roman
\RequirePackage{lmodern} %dla polskiej czcionki w UTF8 w plikach PDF

\RequirePackage[nottoc]{tocbibind} %bibliografia w spisie tresci bez numeru rozdzialu

\RequirePackage[labelfont=bf,labelsep=period]{caption} %tytuly rys i tab: gruba czcionka, kropka

\RequirePackage[a4paper,top=2.5cm,bottom=2.5cm,inner=3.5cm,outer=2.5cm]{geometry}

\RequirePackage[bottom]{footmisc} % aby przypisy były zawsze na dole strony, pod środowiskami pływającymi

\RequirePackage{polski}
\selecthyphenation{polish}
\renewcommand\bibname{Bibliografia}

\RequirePackage{graphicx}

\RequirePackage{titlesec} % zmiana formatu chapter do (1 Nazwa)
\titleformat{\chapter}
  {\normalfont\LARGE\bfseries}{\thechapter}{1em}{}
\titlespacing*{\chapter}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}

\setcounter{secnumdepth}{3} % ustalenie, że numerowane są podrozdziały do poziomu \subsubsection{}
\setcounter{tocdepth}{3} % ustalenie, że są umieszczane w spisie treści podrozdziały do poziomu \subsubsection{}

\RequirePackage{enumitem} %zmiana odleglosci w listach - generalne zmniejszenie
% Jesli efekt nie jest wlasciwy, to trzeba stosowac opcje pakietu "enumitem" w konkretnych listach.
\setlist[itemize]{itemsep=2pt,parsep=0pt,partopsep=0pt,topsep=2pt}
\setlist[description]{itemsep=2pt,parsep=0pt,partopsep=0pt,topsep=2pt}
\setlist[enumerate]{itemsep=2pt,parsep=0pt,partopsep=0pt,topsep=2pt}

\RequirePackage{setspace} %zmiana odleglosci wierszy - \onehalfpsacing w tekscie pracy oraz \singlespacing w oswiadczeniach
\singlespacing

\RequirePackage{xifthen}
% powoduje, ze rozdzial nastepujacy po tym rozkazie zacznie sie na nieparzystej stronie
\newcommand{\startchapterfromoddpage}{\ifthenelse{\isodd{\value{page}}}{\newpage\thispagestyle{empty}\null}{}}

\renewcommand{\normalsize}{\fontsize{12}{13}\selectfont}

\newcommand{\Overnormal}[1]{\@setfontsize\Overnormal{14pt}{16}{#1}}	%definicja czcionki 14pt
\newcommand{\VeryLarge}[1]{\@setfontsize\VeryLarge{16pt}{18}{#1}}	%definicja czcionki 16pt
\newcommand{\TitleFont}[1]{\@setfontsize\TitleFont{18pt}{22}{#1}}	%definicja czcionki 18pt
\newcommand{\VeryVeryLarge}[1]{\@setfontsize\VeryVeryLarge{24pt}{28}{#1}} %definicja czcionki 24pt

%definicje zmiennych
\def\@album{}
\newcommand{\album}[1]{
  \def\@album{#1}
}

\def\@Etitle{}
\newcommand{\Etitle}[1]{
  \def\@Etitle{#1}
}
\def\@thesis{}
\newcommand{\thesis}[1]{
  \def\@thesis{#1}
}
\def\@course{}
\newcommand{\course}[1]{
  \def\@course{#1}
}
\def\@promotor{}
\newcommand{\promotor}[1]{
  \def\@promotor{#1}
}
\def\@pworkplace{}
\newcommand{\pworkplace}[1]{
  \def\@pworkplace{#1}
}

\newif\ifINZYNIERSKA
\newif\ifLICENCJACKA
\newif\ifMAGISTERSKA
\newcommand{\conditionalthesistypeheader}{
  \ifINZYNIERSKA
    \includegraphics[width=9.81cm]{naglowek_inz.png}\par
  \else
    \ifLICENCJACKA
      \includegraphics[width=9.81cm]{naglowek_lic.png}\par
    \fi
    \ifMAGISTERSKA
      \includegraphics[width=9.81cm]{naglowek_mgr.png}\par
    \fi
  \fi
}

\newif\ifWZIM
\newcommand{\conditionaldepartmentfooter}{
  \ifWZIM
    \includegraphics[width=11.04cm]{stopka_WZIM.png}\par
  \fi
}

\renewcommand{\maketitle}{ %definicja strony tytulowej
	\begin{flushleft}
		\thispagestyle{empty}
		\vspace*{3.25cm}
		\conditionalthesistypeheader
		\vspace{0.85cm}
		{\normalsize{\@author}}\\
		{\normalsize{\@album}}\\
		\vspace{16px}
        {\TitleFont{\bfseries{\@title}}\par}
		\vspace{0.2cm}
		{\Overnormal{\@Etitle}\par}
		\vspace{22.5px}
		{\normalsize{\@thesis}}\\
		\vspace{0.1cm}
		{\normalsize{\@course}}\\
    \end{flushleft}
	\begin{flushright}
        \vspace{57px}
		{\normalsize{Praca wykonana pod kierunkiem}}\\
		{\normalsize{\@promotor}}\\
		{\normalsize{\@pworkplace}}\\
		\vspace{1cm}
	\end{flushright}
	\begin{flushleft}
	    {\normalsize{Warszawa, rok \@date}}\\
	    \vfill
	    \conditionaldepartmentfooter
	\end{flushleft}
	
	
	\newpage
	\if@multip
	\else
		
		\null
		\pagestyle{empty}
		\newpage
		\pagestyle{plain}
	\fi
}
\newcommand{\twoppage}[6]{ %definicja strony z dwoma autorami pracy
	\null
	\vfill
	\noindent{\normalsize{Praca przygotowana zespołowo przez:}}\\
	\begin{quote}
	\noindent{\Overnormal{1. #1}}\\
	{\normalsize{#2\\
	który jest autorem:\\
	#3\\
	}}
	\end{quote}
	\vfill
	\begin{quote}
	\noindent{\Overnormal{2. #4}}\\
	{\normalsize{#5\\
	który jest autorem:\\
	#6\\
	}}
	\end{quote}
	\vfill
	\thispagestyle{empty}
	\newpage
	\pagestyle{plain}
}

\newcommand{\threeppage}[9]{ %definicja strony z trzema autorami pracy
	\null
	\vfill
	\noindent{\normalsize{Praca przygotowana zespołowo przez:}}\\
	\begin{quote}
		\noindent{\Overnormal{1. #1}}\\
		{\normalsize{#2\\
		który jest autorem:\\
		#3\\
		}}
	\end{quote}
	\vfill
	\begin{quote}
		\noindent{\Overnormal{2. #4}}\\
		{\normalsize{#5\\
		który jest autorem:\\
		#6\\
		}}
	\end{quote}
	\vfill
	\begin{quote}
		\noindent{\Overnormal{3. #7}}\\
		{\normalsize{#8\\
		który jest autorem:\\
		#9\\
		}}
	\end{quote}	
	\vfill
	\thispagestyle{empty}
	\newpage
	\pagestyle{plain}

}
\newcommand{\statementpage}{ %definicja strony z oswiadczeniami
	\null
	\vfill
	\begin{center}
		{\textbf{Oświadczenie Promotora pracy}}\\
	\end{center}
		Oświadczam, że
		\if@multip
			wskazane przez autora rozdziały pracy dyplomowej przygotowanej zespołowo zostały przygotowane pod moim kierunkiem i~stwierdzam, że spełniają one
		\else
			niniejsza praca została przygotowana pod moim kierunkiem i~stwierdzam, że spełnia ona
		\fi
		 warunki do przedstawienia tej pracy w postępowaniu o nadanie tytułu zawodowego.\\
		
		
		\noindent
		Data \dotfill
		\hspace{2cm}
		Podpis promotora \dotfill

	\vfill
	\begin{center}
		{\textbf{Oświadczenie autora pracy}}\\
	\end{center}
		Świadom/a odpowiedzialności prawnej, w tym odpowiedzialności karnej za złożenie fałszywego oświadczenia, oświadczam, że
		\if@multip
			wskazane przeze mnie rozdziały pracy dyplomowej przygotowanej zespołowo zostały napisane przeze mnie samodzielnie i~nie zawierają
		\else
			niniejsza praca dyplomowa została napisana przeze mnie samodzielnie i~nie zawiera
		\fi
		treści uzyskanych w~sposób niezgodny z~obowiązującymi przepisami prawa, w~szczególności z~ustawą z~dnia
		4~lutego 1994~r.\ o~prawie autorskim i~prawach pokrewnych (Dz.\ U.\ 2019 poz.\ 1231 z późn.\ zm.).\\[2ex]
		Oświadczam, że przedstawiona praca nie była wcześniej podstawą żadnej procedury związanej z nadaniem dyplomu lub uzyskaniem tytułu zawodowego.\\
		
		\noindent
		Oświadczam, że niniejsza wersja pracy jest identyczna z załączoną wersją elektroniczną.
		Przyjmuję do wiadomości, że praca dyplomowa poddana zostanie procedurze antyplagiatowej.\\
		
		\noindent
		Data \dotfill
		\hspace{2cm}
		Podpis autora pracy \dotfill
	\vfill
	\pagestyle{empty}	
	\newpage
	\null
	\pagestyle{empty}
	\newpage
	\pagestyle{plain}
}
\newcommand{\abstractpage}[6]{ %definicja strony ze streszczeniami

    \setstretch{1.4} % od tego miejsca interlinia 1.5; pierwotnie ustawiono \onehalfspacing ale obecna wersja bardziej odpowiada wersji .doc

	\null
	\vfill
	\begin{center}
		\textbf{Streszczenie}\\
	\end{center}
		\noindent
		\textbf{#1}\\[1.5ex]
		{#2}
		\\[4ex]
		Słowa kluczowe -- {#3}
	
	\vfill
	\begin{center}
		\textbf{Summary}\\
	\end{center}
		\noindent
		\textbf{#4}\\[1.5ex]
		{\selecthyphenation{english}#5}
		\\[4ex]
		Keywords -- {\selecthyphenation{english}#6}
	\vfill
	\pagestyle{empty}
	\newpage
	\null
	\pagestyle{empty}
	\newpage
	\pagestyle{plain}
}
\newcommand{\beforelastpage}[1][]{ %definicja strony przedostatniej; zawsze nieparzysta
	\newpage\thispagestyle{empty}\null
    \ifthenelse{\isodd{\value{page}}}{}{\newpage\thispagestyle{empty}\null}

    \singlespacing % z powrotem interlinia pojedyncza
	\thispagestyle{empty}
	\null
	\vspace{5\baselineskip}
	\begin{flushleft}
		Wyrażam zgodę na udostępnienie mojej pracy w~czytelniach Biblioteki SGGW w~tym w~Archiwum Prac Dyplomowych SGGW%
		\ifthenelse{\isempty{#1}}{}{po roku #1}.
	\end{flushleft}
	\vspace{2cm}
	\begin{flushright}
		\hfill\hfill\dotfill\\
		(czytelny podpis autora pracy)
	\end{flushright}
	\vfill
	\newpage\null
    \thispagestyle{empty}
}

% short "unit space" for separating numbers from units
\newcommand{\usp}{\ensuremath{\,}}
% Operator Name: typeset as an operator, with straight Roman font
\RequirePackage{amsmath,amssymb}
\newcommand{\on}[1]{{\ensuremath{\operatorname{{#1}}}}}
% upright d, a differential operator
\newcommand{\ud}{{\ensuremath{\textrm{d}}}}
% shorthands for text backslash, math backslash
\newcommand{\tbs}{\textbackslash}
\newcommand{\bs}{\tbs}
\newcommand{\mbs}{\backslash}


% aby pozycje literatury były sortowane, ale nie kompresowane, np. 1, 2, 3, 5 a nie nie 1-3, 5
\RequirePackage[nocompress]{cite}

% dla dzielenia \url{} na wiele linii, więcej niż dwie
\RequirePackage[hyphens]{url}
\RequirePackage[hyperindex,breaklinks]{hyperref}

% aby pozycje z DOI były aktywnymi linkami
\RequirePackage{doi}
% 2026/06/21 hidelinks aby aktywne linki nie były otoczone ramką - ale linki działają
\hypersetup{breaklinks=true,hidelinks,pdffitwindow=true,pdfnewwindow=true,plainpages=false,linktocpage=true}


% 2020/06/13-2021/10/16: making editorial comments in the text
% 2021/10/16: resigning from the option [dvipsnames] in xcolor package which caused clashes, defining own colours
% BEGIN making editorial comments in the text
\providecommand{\blankfootnote}[1]{% for footnotes without a mark in the text
  \begingroup
  \renewcommand{\thefootnote}{}%
  \begin{NoHyper}%
  \footnotetext{#1}%
  \end{NoHyper}%
  \endgroup
}
\RequirePackage{xcolor} % Colours modified on 2025/05/05
\definecolor{ColorInsert}{rgb}{0,0.5,0.1}
\definecolor{ColorRemove}{rgb}{0.9,0,0}
\definecolor{ColorRemark}{rgb}{0.7,0.45,0}
\RequirePackage[normalem]{ulem} % implements the crossing out of a text
\RequirePackage{etoolbox} % implements among others the test if the parameter is empty
% Editorial remark % Clarified 2024/06/18, added languages 2025/12/07
% auxiliary variable to set the language: Remark or Uwaga -- the latter if REMLANGPL is true
% language is set by using the respective command: \edreminfo or \edreminfoPL or setting \REMLANGPLtrue, \REMLANGPLfalse
\newif\ifREMLANGPL
\REMLANGPLtrue % Domyślnie jest język polski; angielski można włączyć
\newcommand{\edreminfo}{% Modified 2023/01/26 (text corrected), 2024/10/18 (text corrected), 2024/11/09 (no footnote mark),
  % 2024/12/27 (correction of explanations); 2025/03/08 (comments become remarks, commands not changed); 2025/03/17 (shortened); 2025/05/05 (corrected).%
  \renewcommand{\remarkname}{Remark}\REMLANGPLfalse%
  \blankfootnote{\color{ColorRemark}{\underline{\bf \#{}Information on editorial interventions}\hspace{.5em}%
  In this version of the document the editorial interventions: remarks and replacements (some with remarks) are displayed. Remarks are placed in footnotes.
  In the replacements, the deleted text is marked as \rpl{red crossed-out}{}, and the proposed text as \rpl{}{green underlined}.
  Sometimes the replacements can badly fit in the lines of text, or comments continued in the next page can lose colour; this is unavoidable.\\
  \indent The interventions are shown if in the preamble the command {\tt \textbackslash{}SHOWREMARKStrue}\usp{} is present.
  Otherwise, remarks are not shown and replacements are accepted.\\
  \indent Single corrections or remarks can be accepted or rejected by simply editing the text of the source file.
  Also, a~single correction or remark can be accepted by adding~`{\tt a}' at the end of its name, or rejected by adding~`{\tt r}'.
  For example, {\tt \textbackslash{}rpl\{$\cdot$\}\{$\cdot$\}} can be
  accepted by changing its name to {\tt \textbackslash{}rpla\{$\cdot$\}\{$\cdot$\}}
  or rejected by changing its name to {\tt \textbackslash{}rplr\{$\cdot$\}\{$\cdot$\}}.\\
  \indent More information can be found in the class file {\tt SGGW-thesis-EN.cls}.%
}}}
\newcommand{\edreminfoPL}{% Modified 2023/01/26 (text corrected), 2024/10/18 (text corrected), 2024/11/09 (no footnote mark),
  % 2024/12/27 (correction of explanations); 2025/03/08 (comments become remarks, commands not changed); 2025/03/17 (shortened); 2025/05/05 (corrected).%%
  \renewcommand{\remarkname}{Uwaga}\REMLANGPLtrue%
  \blankfootnote{\color{ColorRemark}{\underline{\bf \#{}Informacja o interwencjach edytorskich}\hspace{.5em}%
  W~tej wersji dokumentu są pokazane interwencje edytorskie: uwagi i~zamiany (niektóre z~uwagami). Uwagi są umieszczone w~przypisach.
  W~zamianach tekst usnięty jest oznaczony jako \rpl{czerwony skreślony}{}, a tekst wprowadzony jako \rpl{}{zielony podkreślony}.
  Czasem zamiany źle wpisują się w~linie tekstu, lub komentarze przechodzące na następną stronę tracą kolor; nie można tego uniknąć.\\
  \indent Interwencje są pokazywane, jeśli w~preambule jest obecna komenda {\tt \textbackslash{}SHOWREMARKStrue}\usp{}.
  W~przeciwnym przypadku uwagi nie są pokazane, a~zamiany są zaakceptowane.\\
  \indent Pojedyncze zamiany lub poprawki można zaakceptować lub odrzucić zwyczajnie edytując tekst źródłowy.
  Również, pojedynczą poprawkę lub uwagę można zaakceptować dodając~`{\tt a}' jak {\em accept\/} na końcu jej nazwy, lub odrzucić dodając~`{\tt r}' jak {\em reject}.
  Na przykład, {\tt \textbackslash{}rpl\{$\cdot$\}\{$\cdot$\}} można zaakceptować
  zmieniając jej nazwę na {\tt \textbackslash{}rpla\{$\cdot$\}\{$\cdot$\}}
  lub odrzucić zmieniając jej nazwę na {\tt \textbackslash{}rplr\{$\cdot$\}\{$\cdot$\}}.\\
  \indent Więcej informacji można znaleźć w~pliku klasy {\tt SGGW-thesis.cls}.%
}}}
\newcommand{\edrembody}[1]{\protect{\footnote{\color{ColorRemark}{\underline{\bf \remarkname}\hspace{.5em}#1}}}}% 2024/06/18 Remark instead for Editorial remark
\newcommand{\edrem}[1]{\edrembody{#1}}
% Replacement - replacement of the text with another text
\newcommand{\rplbody}[2]{\protect{{\color{ColorRemove}\sout{#1}}{\color{ColorInsert}\uline{#2}}}}
\newcommand{\rpl}[2]{\rplbody{#1}{#2}}
% Replacement commented - replacement of the text with another text, with a remark (before 2025/03/08 called comment, now remark for easier searching of editorial interventions)
\newcommand{\rplcbody}[3]{\protect{{\color{ColorRemove}\sout{#1}}{\color{ColorInsert}\uline{#2}}\footnote{\color{ColorRemark}{\uline{\bf \remarkname}\hspace{.5em}{#3}}}}}
\newcommand{\rplc}[3]{\rplcbody{#1}{#2}{#3}}

% Global hiding the replacements and comments
\newif\ifSHOWREMARKS

% single type of remark can be removed or type of correction can be accepted by putting in the source an uncommented line as follows:
%\renewcommand{\edrem}[1]{} % uncomment this line to hide editorial remarks
%\renewcommand{\edreminfo}{} % uncomment this line to hide info for editorial remarks
%\renewcommand{\rpl}[2]{{#2}} % uncomment this line to hide the replacements and to leave only the inserted text
%\renewcommand{\rplc}[3]{{#2}} % uncomment this line to hide the commented replacements and to leave only the inserted text

% Important replacements and comments which are not hidden by global hiding
\newcommand{\edremi}[1]{\edrembody{#1}}
\newcommand{\rpli}[2]{\rplbody{#1}{#2}}
\newcommand{\rplci}[3]{\rplcbody{#1}{#2}{#3}}
% Accepting or rejecting a particular replacement - add 'a' to accept or 'r' to reject at the end of the command name
% 2023/06/10: inserting \mbox{} instead of negative \hspace if second parameter is empty
\newcommand{\edrema}[1]{} % accept the comment - hide it
\newcommand{\rpla}[2]{\ifstrempty{#2}{\mbox{}}{#2}} % accept this change - show changed text only, in black, not underlined
\newcommand{\rplr}[2]{\protect{{#1}}} % reject this change - show original text, in black, not crossed % corrected 2025/12/08
\newcommand{\rplca}[3]{\ifstrempty{#2}{\mbox{}}{#2}} % accept this change - show changed text only, in black, not underlined
\newcommand{\rplcr}[3]{\protect{{#1}}} % reject this change - show original text, in black, not crossed % corrected 2025/12/08
% END making editorial comments in the text

% Wypisanie informacji o tym, jak używać kluczy z poradnika bedącego Dodatkiem do wzorcowej pracy dyplomowej.
\providecommand{\keysinfoPL}{%
\blankfootnote{\color{ColorRemark}\underline{\bf \#{}Informacja o~słowach kluczowych}\hspace{.5em}%
Po napotkaniu w~uwagach do Państwa pracy słowa kluczowego w~formacie "\#AAAA", gdzie A -- wielka litera, należy szukać tego słowa w~Poradniku,
który jest Dodatkiem~A do wzorca pracy dyplomowej (w~pliku {\tt main.pdf} z~repozytorium~\url{https://github.com/lchmiel/SGGW-Thesis-LaTeX}).
Najpierw trzeba poszukać w~nim słowa kluczowego \#KLCZ, tam jest wyjaśnienie jak używać kluczy.
W~dalszych uwagach zazwyczaj podany jest tylko klucz, a~wyjaśnienia są w~Poradniku pod tym kluczem.
Czasem w~kluczu jest pomijany znak~`\#'.}}


\AtBeginDocument{%
% before end of preamble
\ifREMLANGPL
  \providecommand{\remarkname}{Uwaga}
  \else
  \providecommand{\remarkname}{Remark}
\fi
\ifSHOWREMARKS\else
  \renewcommand{\edrem}[1]{} % uncomment this line to hide editorial remarks
  \renewcommand{\edreminfo}{} % uncomment this line to hide info for editorial remarks
  \renewcommand{\rpl}[2]{{#2}} % uncomment this line to hide the replacements and to leave only the inserted text
  \renewcommand{\rplc}[3]{{#2}} % uncomment this line to hide the commented replacements and to leave only the inserted text
  \renewcommand{\edreminfo}{}
  \renewcommand{\edreminfoPL}{}
  \renewcommand{\keysinfoPL}{}
\fi
} % \AtBeginDocument
