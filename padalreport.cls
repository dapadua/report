\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{padalreport}
	[2014/05/07 
Report Class for PADAL]

\LoadClass[letterpaper,notitlepage]{report}

\RequirePackage[inner=1in,textwidth=6.5in,textheight=9in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{latexsym}
\RequirePackage{eucal}
\RequirePackage{verbatim}
\RequirePackage{enumerate}
\RequirePackage{xspace}
\RequirePackage{ifthen}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{subfigure}
%\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{pifont}
\RequirePackage{pdfpages}
\RequirePackage{multicol}
\RequirePackage{longtable}
\RequirePackage{tabu}

\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont}


\def\PADALabstract#1{\def\@PADALabstract{#1}}
\PADALabstract{}

\def\PADALInstitutionOne#1{\def\@PADALInstitutionOne{#1}}

\def\PADALInstitutionOneShort#1{\def\@PADALInstitutionOneShort{#1}}

\def\PADALInstitutionTwo#1{\def\@PADALInstitutionTwo{#1}}
\PADALInstitutionTwo{}

\def\PADALInstitutionTwoShort#1{\def\@PADALInstitutionTwoShort{#1}}
\PADALInstitutionTwoShort{}

\def\PADALtitle#1{\def\@PADALtitle{#1}}

\def\PADALauthor#1{\def\@PADALauthor{#1}}
\def\PADALauthorshort#1{\def\@PADALauthorshort{#1}}

\RequirePackage{eso-pic}

\newcommand\PADALBackgroundPic{
      \put(-3,0){
        \parbox[b][\paperheight]{\paperwidth}{%
          \vfill
          \centering
          \includegraphics[width=\paperwidth,height=\paperheight]{figures/padalbackground}
          \vfill
}}}

\titleformat{\section}
  {\sffamily\Large\bfseries}
  {\thesection}{1em}{}
\titleformat{\chapter}[display]
  {\normalfont\sffamily\huge\bfseries}
  {\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titleformat{\title}[display]
  {\normalfont\sffamily\huge\bfseries}
  {\chaptertitlename\ \thechapter}{20pt}{\Huge}

\renewcommand\maketitle{\begin{center}%
	\vspace*{2cm}%
	\pagestyle{empty}%
	{\huge \sffamily \@PADALtitle \par}%
	\vskip 3em%
	{\normalsize \@PADALauthor \par}%
	\vskip 3em%
	{\normalsize \@PADALInstitutionOne \par}%
	\vskip 2em%
	{\normalsize \@PADALInstitutionTwo \par}%
	\vskip 3em%
	\end{center}\par
	\noindent%
	\@PADALabstract%
	\newpage%
	\pagestyle{plain}%
	\setcounter{page}{1}%
	}

\newcommand\PADALfrontpage{
	\vskip 30em%
	\AddToShipoutPicture*{\PADALBackgroundPic}%
	\thispagestyle{empty}%
	{\raggedleft \vspace*{9cm} \par}%
%	{\raggedleft \huge \sffamily \textbf{ \@PADALtitle } \par}%
	\vskip 3em%
%	{\raggedleft \small \sffamily \@PADALauthorshort \par}%
	\vskip 3em%
%	{\raggedleft \small \sffamily \@PADALInstitutionOneShort \par}%
%	{\raggedleft \small \sffamily \@PADALInstitutionTwoShort \par}%
	\vskip 3em
%	{\raggedleft \large \sffamily \@date \par}
	\newpage%
	\thispagestyle{empty}%
	\vspace*{1cm}%
	\cleardoublepage%
	\thispagestyle{empty}%
	\setcounter{page}{1}%
	}

\newcommand\PADALbackpage{
	\cleardoublepage%
	\includepdf[pages={1}]{figures/padalbackpage}
	}

\newcommand\note[1] {
  {\color{blue}{#1}}
}

\newcommand\mv[1] {
  {\color{purple}{#1}}
}

\thispagestyle{plain}
\pagenumbering{arabic}
