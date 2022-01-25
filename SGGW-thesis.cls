%
% Klasa do pisania prac dyplomowych - licencjackich, inzynierskich i magisterskich - w SGGW

% Wersja 1.07 z 2022.01.26
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
% 1. Zmiana \onehalfspacing na \setstretch{1.4} - dzieki temu interlinia jest niemal identyczna jak w wersji w Word, czyli odtep 1.5.
%
% Wersja 1.04 z 2018.01.17.
% Autorzy: Pawel Wasil, Michal Rosa
% Wspolpraca: Leszek Chmielewski
% Zmiany:
% 1. Poprawiono blad wielkosci czcionki tytulu pracy.
% 2. Drobne retusze w formatach

% Wersja 1.03 z 2018.01.10.
% Autor: Lukasz Adamczyk
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
% Autor: Lukasz Adamczyk
%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{SGGW-thesis}[2022/01/26 LaTeX class for writing theses in SGGW]


\DeclareOption{multip}{\@multiptrue}
\DeclareOption{onep}{\@multipfalse}

\newif\if@multip
\ExecuteOptions{multip}
\@multipfalse

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\DeclareOption*{}
\ProcessOptions*\relax
\LoadClass[12pt,notitlepage,twoside]{report}

\RequirePackage{graphicx}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx} %czcionka Times New Roman
\RequirePackage[utf8]{inputenc}
\RequirePackage[nottoc,numbib]{tocbibind} %bibliografia z numerem i w spisie tresci

\RequirePackage[labelfont=bf,labelsep=period]{caption} %tytuly rys i tab: gruba czcionka, kropka

\RequirePackage[a4paper,top=2.5cm,bottom=2.5cm,inner=3.5cm,outer=2cm]{geometry}

\RequirePackage{polski}
\selecthyphenation{polish}

\RequirePackage{titlesec} % zmiana formatu chapter do (1 Nazwa)
\titleformat{\chapter}
  {\normalfont\LARGE\bfseries}{\thechapter}{1em}{}
\titlespacing*{\chapter}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}

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

\newcommand{\version}{1.07}

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
	\noindent{\normalsize{Praca przygotowana zespo{\l}owo przez:}}\\
	\begin{quote}
	\noindent{\Overnormal{1. #1}}\\
	{\normalsize{#2\\
	kt\'{o}ry jest autorem:\\
	#3\\
	}}
	\end{quote}
	\vfill
	\begin{quote}
	\noindent{\Overnormal{2. #4}}\\
	{\normalsize{#5\\
	kt\'{o}ry jest autorem:\\
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
	\noindent{\normalsize{Praca przygotowana zespo{\l}owo przez:}}\\
	\begin{quote}
		\noindent{\Overnormal{1. #1}}\\
		{\normalsize{#2\\
		kt\'{o}ry jest autorem:\\
		#3\\
		}}
	\end{quote}
	\vfill
	\begin{quote}
		\noindent{\Overnormal{2. #4}}\\
		{\normalsize{#5\\
		kt\'{o}ry jest autorem:\\
		#6\\
		}}
	\end{quote}
	\vfill
	\begin{quote}
		\noindent{\Overnormal{3. #7}}\\
		{\normalsize{#8\\
		kt\'{o}ry jest autorem:\\
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
		{\textbf{O\'{s}wiadczenie Promotora pracy}}\\
	\end{center}
		O\'{s}wiadczam, że
		\if@multip
			wskazane przez autora rozdzia{\l}y pracy dyplomowej przygotowanej zespo{\l}owo zosta{\l}y przygotowane pod moim kierunkiem i~stwierdzam, że spe{\l}niaj\k{a} one
		\else
			niniejsza praca zosta{\l}a przygotowana pod moim kierunkiem i~stwierdzam, że spe{\l}nia ona
		\fi
		 warunki do przedstawienia tej pracy w post\k{e}powaniu o nadanie tytu{\l}u zawodowego.\\
		
		
		\noindent
		Data \dotfill
		\hspace{2cm}
		Podpis promotora \dotfill

	\vfill
	\begin{center}
		{\textbf{O\'{s}wiadczenie autora pracy}}\\
	\end{center}
		\'{S}wiadom/a odpowiedzialno\'{s}ci prawnej, w tym odpowiedzialno\'{s}ci karnej za z{\l}ożenie fa{\l}szywego o\'{s}wiadczenia, o\'{s}wiadczam, że
		\if@multip
			wskazane przeze mnie rozdzia{\l}y pracy dyplomowej przygotowanej zespo{\l}owo zosta{\l}y napisane przeze mnie samodzielnie i~nie zawieraj\k{a}
		\else
			niniejsza praca dyplomowa zosta{\l}a napisana przeze mnie samodzielnie i~nie zawiera
		\fi
		  tre\'{s}ci uzyskanych w spos\'{o}b niezgodny z obowi\k{a}zuj\k{a}cymi przepisami prawa, w szczeg\'{o}lno\'{s}ci z ustaw\k{a} z dnia
		4~lutego 1994~r.\ o~prawie autorskim i~prawach pokrewnych (Dz.\ U.\ 2019 poz.\ 1231 z p\'{o}\'{z}n.\ zm.)\\[2ex]
		O\'{s}wiadczam, że przedstawiona praca nie by{\l}a wcze\'{s}niej podstaw\k{a} żadnej procedury zwi\k{a}zanej z nadaniem dyplomu lub uzyskaniem tytu{\l}u zawodowego.\\%[2ex]
		
		\noindent
		O\'{s}wiadczam, że niniejsza wersja pracy jest identyczna z za{\l}\k{a}czon\k{a} wersj\k{a} elektroniczn\k{a}.
		Przyjmuj\k{e} do wiadomo\'{s}ci, że praca dyplomowa poddana zostanie procedurze antyplagiatowej.
		\\
		
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
		S{\l}owa kluczowe -- {#3}
	
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
		Wyrażam zgod\k{e} na udost\k{e}pnienie mojej pracy w~czytelniach Biblioteki SGGW w~tym w~Archiwum Prac Dyplomowych SGGW%
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
