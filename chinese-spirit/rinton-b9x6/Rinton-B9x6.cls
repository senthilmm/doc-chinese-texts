%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%
%% Rinton-B9x6.cls: 07-30-2000
%% Class file to use with books size [9'' x 6''] to be published by
%% Rinton Press written in Latex2e 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{Rinton-B9x6}
              [1996/05/26 v1.3r
 Standard LaTeX document class]
\newif\if@restonecol
\@twosidetrue\@mparswitchfalse\@twocolumnfalse
%
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{twocolumn}{\twocolumn\sloppy\flushbottom}
\ExecuteOptions{a4,10pt,twoside,onecolumn,final,openright}
\ProcessOptions
%
\newdimen\trimheight
\newdimen\trimwidth
\newdimen\typeheight
\newdimen\normaltextheight
\newdimen\normaltextwidth
\newdimen\tempdimen
%
\newbox\tempbox
%%
%
\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
%
\newcount\minute
\newcount\hour
\def\currenttime{%
	\minute\time
	\hour\minute
	\divide\hour60
	\the\hour:\multiply\hour60\advance\minute-\hour\the\minute}
%
\def\infotag{\hbox to \trimwidth{\sf \today\qquad\currenttime\qquad Rinton-Book9x6\hfill \jobname}}%
%
\newcommand\contentsname{Contents}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\appendixname{Appendix}
\newcommand\prefacename{Preface}
\newcommand\forewardname{Foreword}
\newcommand\chapname{Chapter~\thechapter\unskip\hspace*{1em}}
\newcommand\appname{Appendix~\theappendix\unskip\hspace*{1em}}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
%%
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{4}
\newcommand\tableofcontents{%
	{\cleardoublepage
         \thispagestyle{plain}%
         \global\@topnum\z@
         \@afterindentfalse
	\if@twocolumn
      	\@restonecoltrue\onecolumn
    	\else
      	\@restonecolfalse
    	\fi
	{\vbox to 156pt{%
	\vspace*{13pt}
	\parindent\z@\raggedright\reset@font
        {\centering{{\CNfont \phantom{Chapter \thechapter}\par}
        \vskip 12\p@
    	\vbox{\CTfont\contentsname}\par}\par}\nobreak\vfill}}
	\@starttoc{toc}%
    	\if@restonecol\twocolumn\fi}}
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
%
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@appenx[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
%
\newcommand*\l@schapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 0.6em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{\z@}{2.3em}}%1.5em
\newcommand*\l@subsection{\@dottedtocline{2}{2.3em}{3.2em}}%3.8em
\newcommand*\l@subsubsection{\@dottedtocline{3}{5.7em}{4.1em}}%7.0
\newcommand*\l@paragraph{\@dottedtocline{4}{8.7em}{5em}}%10em
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
%%
\def\@xiiipt{8}
\def\@xiiipt{13}
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiiipt
   \abovedisplayskip 7\p@ \@plus4\p@
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayshortskip \abovedisplayskip
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
%
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 9.5\p@ \@plus3\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 5\p@ \@plus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 5\p@ \@plus3\p@
               \parsep 2\p@ \@plus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
%
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{10}%
   \abovedisplayskip 7\p@ \@plus3\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus\p@
               \parsep 2\p@ \@plus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
%
\def\rhfont{\footnotesize}
\def\PNfont{\Large{}}
\def\PTfont{\LARGE\bfseries\boldmath{}}
\def\CNfont{\large\bfseries}
\def\CTfont{\Large\bfseries\boldmath{}}
\def\sectionfont{\fontsize{10}{13}\bfseries\boldmath\selectfont\rightskip2pc}
\def\subsectionfont{\fontsize{10}{13}\bfseries\boldmath\itshape\selectfont\rightskip2pc}
\def\subsubsectionfont{\fontsize{10}{13}\itshape\selectfont\rightskip3pc}%
\def\paragraphfont{\fontsize{10}{13}\bfseries\boldmath\selectfont\rightskip3pc}
\def\referencefont{\small}
\def\figurecaptionfont{\footnotesize}
\def\tablefont{\small}
\def\tablecaptionfont{\footnotesize}
%
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}%12/14
\newcommand\Large{\@setfontsize\Large\@xviipt{21}}%17/21
\newcommand\LARGE{\@setfontsize\LARGE\@xxvpt{25}}%25/25
%
\trimheight9.0in
\advance\trimheight0.046875in
\trimwidth6in
\typeheight45.1pc
%
\setlength\parindent{15pt}
\setlength\headheight{8\p@}%8
\setlength\headsep   {19\p@}%25
\setlength\topskip  {7\p@}
\setlength\footskip{20\p@}
\setlength\maxdepth{4\p@}
\setlength\@maxdepth\maxdepth
\setlength\textwidth{4.8truein}
\normaltextwidth\textwidth
\setlength\textheight\typeheight
\advance\textheight-\headheight
\advance\textheight-\headsep
\advance\textheight-2pt  
\setlength\normaltextheight{\textheight}
\setlength\oddsidemargin{.60in}%{.8125in}
\setlength\evensidemargin{.60in}%
\setlength\marginparwidth{.75in}
\setlength\marginparsep{7\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{.65in}%0.75
\setlength\footnotesep {12\p@}% \@plus 5\p@}%
\setlength{\skip\footins}{6\p@ \@plus 4\p@}%
\setlength\floatsep    {22\p@ \@plus 2\p@}
\setlength\textfloatsep{15.1\p@ \@plus 6\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{2\p@ \@plus 1\p@}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
%
\setcounter{secnumdepth}{4}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}%[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart       {\arabic{part}}
\renewcommand\thechapter       {\arabic{chapter}}
\renewcommand\thesection       {\thechapter.\arabic{section}}
\renewcommand\thesubsection    {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\renewcommand\theparagraph     {(\alph{paragraph})}
%
\newcommand\section{\@startsection {section}{1}{\z@}{-20pt \@plus-3pt minus6pt}{12pt}{\sectionfont}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}{-16.5pt \@plus-3pt minus6pt}{6.25pt}{\subsectionfont}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}{-12.75pt \@plus-3pt minus3pt}{6pt}{\subsubsectionfont}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}{-8pt \@plus -3pt}{.001pt}{\paragraphfont}}
%
\def\@seccntformat#1{{\upshape\csname the#1\endcsname}\hskip 1em}
%
\newcommand\part{\cleardoublepage
                 \thispagestyle{pblind}%
                 \global\@topnum\z@
                 \@afterindentfalse
                 \secdef\@part\@spart}
%
\def\@part[#1]#2{%
 {\vglue-41pt
  \vbox to 6.85pc{\parindent \z@ \raggedright \reset@font
         \refstepcounter{part}
         {\CNfont PART \thepart}
          \vskip-2.95pt         
          \hbox to \hsize{\hss\vrule height1pt width28pc}%
         \par
         \vskip 12\p@
    \vbox{\CTfont #1}\par
    \nobreak}}
  \@endpart}
%
\def\@spart#1{%
    {\PTfont #1\par}%
    \@endpart}
%
\def\@endpart{\vfil\newpage
              \if@twoside
                \hbox{}%
                \thispagestyle{pblind}%
                \newpage
              \fi}
%
\newcommand\chapter{\cleardoublepage
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
%
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
			\renewcommand\thepage{\arabic{page}}
                        \else \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
%
\def\@makechapterhead#1{%
	{\vbox to 156pt{%
	\refstepcounter{chapter}%
	\addcontentsline{toc}{chapter}{\chapname#1}
	\vspace*{13pt}
	\parindent\z@\raggedright\reset@font
        {\centering{{\CNfont Chapter \thechapter\par}
        \vskip 12\p@
    	\vbox{\CTfont #1}\par}\par}\nobreak\vfill}}}
%
\def\@schapter#1{
	\markboth{#1}{#1}
        \@makeschapterhead{#1}%
        \@afterheading}
%
\def\@makeschapterhead#1{%
	{\addcontentsline{toc}{schapter}{#1}
	\vbox to 156pt{%
	\vspace*{13pt}
	\parindent\z@\raggedright\reset@font
        {\centering{{\CNfont \phantom{Chapter \thechapter}\par}
        \vskip 12\p@
    	\vbox{\CTfont #1}\par}\par}\nobreak\vfill}}}
%
%
\setcounter{topnumber}{4}
\renewcommand\topfraction{.9}
\setcounter{bottomnumber}{4}
\renewcommand\bottomfraction{.9}
\setcounter{totalnumber}{8}
\renewcommand\textfraction{.1}
\renewcommand\floatpagefraction{.9991}
\setcounter{dbltopnumber}{5}
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.9}
%
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{8\p@ plus3pt minus3pt}
\setlength\belowcaptionskip{-1\p@}
%
\def\FigName{figure}%
\newbox\captionbox
%
\long\def\@makecaption#1#2{%
  \ifx\FigName\@captype
    \vskip\abovecaptionskip
    \setbox\tempbox\hbox{{\figurecaptionfont #1\hskip1em #2}}
	\ifdim\wd\tempbox< 28pc
	\centerline{\box\tempbox}
	\else
	{\figurecaptionfont #1\hskip1em #2\par}
\fi\else
  	\setbox\tempbox\hbox{{\tablecaptionfont #1\hskip1em #2}}
 	\ifdim\wd\tempbox< 28pc 
	\centerline{\box\tempbox}
	\else
	{\tablecaptionfont #1\hskip1em #2\par}%
	\fi   
 \vskip\belowcaptionskip
 \fi}
%
\InputIfFileExists{psfig.sty}{\typeout{^^Jpsfig.sty inputed...ok}}{\typeout{^^JWarning: psfig.sty could be be found.^^J}}
\InputIfFileExists{epsfsafe.tex}{\typeout{^^Jepsfsafe.tex inputed...ok}}
			{\typeout{^^JWarning: epsfsafe.tex could not be found.^^J}}
\InputIfFileExists{epsfig.sty}{\typeout{^^Jepsfig.sty inputed...ok}}{\typeout{^^JWarning: epsfig.sty could not be found.^^J}}
\InputIfFileExists{epsf.sty}{\typeout{^^Jepsf.sty inputed...ok}}{\typeout{^^JWarning: epsf.sty could not be found.^^J}}%
%
\def\bm#1{\mbox{\boldmath$#1$}}
\newcounter{figure}[chapter]
\renewcommand\thefigure{\thechapter.\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Fig.\ \thefigure}
\newenvironment{figure}{\@float{figure}}{\end@float}
\newenvironment{figure*}{\@dblfloat{figure}}{\end@dblfloat}
%
%
\def\ArtWork#1{\noindent\hfill\epsfbox{#1}\hfill}%
%
\newcounter{table}[chapter]
\renewcommand\thetable{\thechapter.\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table\ \thetable}
\newenvironment{table}
               {\@float{table}}
               {\vskip5pt\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

%
\newdimen\tabledim
%
\long\def\tbl#1#2{%
 \setbox\tempbox\hbox{\tablefont #2}%
 \tabledim\hsize\advance\tabledim by -\wd\tempbox
	\global\divide\tabledim\tw@
 	\caption{#1}
	\centerline{\box\tempbox}}%
% 
\def\Hline{\noalign{\ifnum0=`}\fi\hrule \@height .5pt 
		\futurelet\@tempa\@xhline}
\def\toprule{\\[-3pt]\Hline\\[-9pt]\Hline\\[-5.5pt]}
\def\colrule{\\[-7.5pt]\hline\\[-5.5pt]}
\def\botrule{\\[-7.5pt]\Hline\\[-9pt]\Hline}
\def\crule#1{\\[-6pt]\cline{#1}\\[-6.5pt]}
\def\tabnote#1{\par\vskip-\lastskip\vskip5.5pt\rightskip\tablewd#1\par}
%
\newenvironment{InTextTable}{%
 	\par\addvspace{16pt plus6pt minus6pt}%
 	\leftskip\tblskip\tablefont\noindent\ignorespaces
}{%
   	\par\addvspace{17pt plus6pt minus6pt}}
%
%%
\def\@listi{\leftmargin\leftmargini
            \parsep\z@
            \topsep 8\p@ \@plus3\p@ \@minus4\p@
            \itemsep\z@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    6\p@ \@plus3\p@ \@minus\p@
              \parsep\z@ \itemsep\z@}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    3\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep\z@}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
\setlength\leftmargini  {3.5em}
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{(\theenumi)}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}
%
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\newenvironment{romanlist}{%
  \def\theenumi{\roman{enumi}}\def\theenumii{\alph{enumii}}%
  \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{alphlist}{%
  \def\theenumi{\alph{enumi}}\def\theenumii{\roman{enumii}}%
  \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{unnumlist}{%
  \leftmargini4pc
   \ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \list{}{\itemindent-1pc
              \def\makelabel##1{\hss\llap{##1}}}%
   \fi
}{%
  \endlist}
%
\def\@xthm#1#2{\@begintheorem{#2}{\csname the#1\endcsname}{}\ignorespaces}
\def\@ythm#1#2[#3]{\@begintheorem{}{\csname the#1\endcsname}{#3}\ignorespaces}
%
\let\Definitionfont\upshape%
\let\Theoremfont\itshape
\let\Corollaryfont\itshape
\let\Propositionfont\itshape
\let\Lemmafont\itshape
\let\Examplefont\upshape
\let\Theoremheadfont\bfseries
\let\Corollaryheadfont\bfseries
\let\Propositionheadfont\bfseries
\let\Lemmaheadfont\bfseries
\let\Definitionheadfont\bfseries
\def\Exampleheadfont{\bfseries}
%
\def\@begintheorem#1#2#3{\par\addvspace{6pt plus3pt minus2pt}%
              \noindent{\csname#1headfont\endcsname#1\ \ignorespaces#3 #2}%
              \csname#1font\endcsname\hskip1pc\ignorespaces}
\def\@endtheorem{\par\addvspace{6pt plus3pt minus2pt}\@endparenv}
%
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[chapter]
\newtheorem{lemma}{Lemma}[chapter]
\newtheorem{proposition}{Proposition}[chapter]
\newtheorem{definition}{Definition}[chapter]
\newtheorem{example}{Example}[chapter]
%
\newif\if@halmos
\@halmostrue
\font\msa=msam10 at 10pt
\def\halmos{\par
	\vskip-\baselineskip
	\hbox to \hsize{\hfill\hskip1.5pc\msa\char'003}\global\@halmosfalse}
%
\newenvironment{proof}{%
 \par\addvspace{6pt plus3pt minus2pt}%
 \noindent{\bfseries\itshape Proof.}\hskip1pc\ignorespaces}{%
  \if@halmos\halmos\fi
  \par\addvspace{6pt plus3pt minus2pt}\@endparenv\global\@halmostrue}
%
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
%
\@addtoreset{equation}{chapter}
\renewcommand\theequation{\thechapter.\@arabic\c@equation}
%
\renewcommand\footnoterule{}%
\renewcommand\thefootnote{\fnsymbol{footnote}}
\@addtoreset{footnote}{chapter}
\long\def\@makefntext#1{%
    \parindent1em%
    \noindent
    \@hangfrom{{\@makefnmark}}#1}
%
%
\mark{{}{}}
%
\def\ps@plain{%
     \let\@mkboth\@gobbletwo
     \let\@oddhead\@empty
     \def\@oddfoot{\hfill\rhfont\thepage\hfill}%
     \let\@evenhead\@empty
     \let\@evenfoot\@oddfoot}
%
\def\ps@headings{%
   \let\@oddfoot\@empty\let\@evenfoot\@empty
   \def\@evenhead{\hbox to 4.5in{\rhfont\thepage\hfil{\it \leftmark}\hfil}}%
   \def\@oddhead{\hbox to 4.5in{\hfil\rhfont{\it \rightmark}\hfil\thepage}}%
   \let\@mkboth\markboth
   \def\chaptermark##1{\markboth{##1}{}}%
   \def\sectionmark##1{\markright{##1}}}%
%
\def\ps@myheadings{%
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@evenhead{\hbox to 28pc{\rhfont\thepage \hfill {\it \leftmark}\hfill}}%
     \def\@oddhead{\hbox to 28pc{%
	\rhfont\hfill {\it \thechapter\unskip\hskip8pt\rightmark}\hfill\thepage}}}%
%      
\def\ps@pblind{%	
	\let\@mkboth\@gobbletwo
	\def\@evenhead{}%
	\def\@oddhead{}
	\def\@oddfoot{\hfill\mbox{\lower7.5pc\hbox{\rhfont\thepage}}\hfill}
   \let\@evenfoot\@oddfoot}
%
%%%%%%%%%%%%%%%%%%%%%%%%Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcounter{appendix}
\renewcommand\theappendix{\Alph{appendix}}
\def\@makeappendixhead#1{%
	\vbox to 156pt{%
	\refstepcounter{appendix}
	\addcontentsline{toc}{chapter}{\appname#1}
     	\vspace*{13pt}
	\parindent\z@\raggedright\reset@font
	{\centering{{\CNfont\appendixname\  \theappendix}\par
	\vskip 12\p@
	\vbox{\CTfont #1}\par}\par}\nobreak
	\vfill\@afterheading\@afterindentfalse}}
%
\newenvironment{appendix}{\par%
	\let\@makechapterhead\@makeappendixhead
	\let\thechapter\theappendix%
	\renewcommand\thesection{\thechapter.\arabic{section}}%
  	\renewcommand\thetable{\thechapter.\arabic{table}}%
	\@addtoreset{equation}{appendix}
	\@addtoreset{section}{appendix}
	\@addtoreset{table}{appendix}
	\@addtoreset{figure}{appendix}
}
	{\par\vfill\pagebreak\par}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newenvironment{theindex}
	{\raggedright\small
	\if@twocolumn
         	\@restonecolfalse
         \else
         	\@restonecoltrue
         \fi
         \columnseprule \z@
         \columnsep 18\p@
                \twocolumn[\@makeschapterhead{\indexname}\vspace*{4pt}]%
                \@mkboth{\indexname}{\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem  {\par\hangindent 1em}
\newcommand\subitem   {\par\hangindent 40\p@ \hspace*{10\p@}}
\newcommand\subsubitem{\par\hangindent 40\p@ \hspace*{30\p@}}
\newcommand\indexspace{\par\vskip\baselineskip}
%%
\def\@up#1{\raise.2ex\hbox{#1}}
%
\let\@internalcite\cite
\def\cite{\def\@citeseppen{-1000}%
\def\@cite##1##2{\@up[\nobreak\hskip 0in{##1\if@tempswa , ##2\fi}\@up]}%
	\def\citeauthoryear##1##2{##1, ##2}\@internalcite}
\def\shortcite{\def\@citeseppen{1000}%
	\def\@cite##1##2{\@up[{##1\if@tempswa , ##2\fi}\@up]}%
\def\citeauthoryear##1##2{##2}\@internalcite}
%
\def\citeauthor#1{\def\@citeseppen{1000}%
	\def\@cite##1##2{{##1\if@tempswa , ##2\fi}}%
\def\citeauthoryear##1##2{##1}\@citedata{#1}}
	\def\citeyear#1{\def\@citeseppen{1000}%
\def\@cite##1##2{{##1\if@tempswa , ##2\fi}}%
\def\citeauthoryear##1##2{##2}\@citedata{#1}}
%
\def\@citedata#1{\@tempswafalse%
	\if@filesw\immediate\write\@auxout{\string\citation{#1}}\fi
  \def\@citea{}\@cite{\@for\@citeb:=#1\do
    {\@citea\def\@citea{,\penalty\@citeseppen\ }\@ifundefined
       {b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
{\csname b@\@citeb\endcsname}}}{}}
\def\@citex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
 \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{;\penalty\@citeseppen\ }%
     \def\@tempa##1##2\@nil{\edef\@citeb{\if##1\space##2\else##1##2\fi}}%
     \expandafter\@tempa\@citeb\@nil
     \@ifundefined{b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
     {\csname b@\@citeb\endcsname}}}{#1}}
\def\@biblabel#1{\def\citeauthoryear##1##2{##1, ##2}}
%
%
\def\thebibliography#1{\chapter*{\bibname}
	\referencefont
	\vspace*{4pt}
	\list{\@biblabel{\arabic{enumiv}}}
	{\settowidth\labelwidth{\@biblabel{#1}}%
    	\leftmargin\labelwidth\advance\leftmargin by 24pt
	\labelsep0pt\itemsep0pt\parsep0pt\itemindent-24pt
	\advance\leftmargin\labelsep
	\usecounter{enumiv}%
    	\let\p@enumiv\@empty
    	\def\theenumiv{\arabic{enumiv}}}%
    	\def\newblock{\hskip .11em plus.33em minus.07em}%
    	\sloppy\clubpenalty4000\widowpenalty4000
    	\sfcode`\.=1000\relax}
\newcommand\newblock{}
%
%\newenvironment{thebibliography}{%
% 	\chapter*{\bibname}
%	\referencefont
%	\vspace*{4pt}
% 	\let\bibitem\item
% 	\list{}{\leftmargin2pc
% 	\itemindent-2pc\labelwidth0pt\labelsep0pt
%	\parsep0pt\parskip\z@\itemsep0pt}
%}{%
% \endlist}
%
\newenvironment{titlepages}{%
	\thispagestyle{pblind}
	\renewcommand\thepage{\roman{page}}
	\par\ \par
	\vfill
	Publishers' page\par
	\vfill
	\pagebreak\par
	\thispagestyle{pblind}
	\ \par
	\vfill
	Publishers' page\par
	\vfill
	\pagebreak\par
	\thispagestyle{pblind}
	\ \par
	\vfill
	Publishers' page\par
	\vfill
	\pagebreak\par
	\thispagestyle{pblind}
	\ \par
	\vfill
	Publishers' page\par
	\vfill
	\pagebreak\par}{}%
%	
\newenvironment{preface}{%
	\chapter*{\prefacename}\normalsize
	\markboth{Preface}{Preface}
}{\par\vfill\pagebreak\par}%
%
\newenvironment{foreword}{%
	\chapter*{\forewardname}\normalsize
	\markboth{Foreword}{Foreword}
}{\par\vfill\pagebreak\par}%
%
\newenvironment{tblofcontents}{%
	\markboth{Contents}{Contents}
	\renewcommand\thepage{\roman{page}}
	\tableofcontents}{\par\vfill\pagebreak\par}%
%
\newenvironment{dedication}{%
	\normalsize
	\thispagestyle{pblind}
	\renewcommand\thepage{\roman{page}}
	\ \par
	\vspace*{10pc}\begin{center}}{\end{center}\par\vfill\par}%
%	
\def\cropmarks{\nointerlineskip%
     \vbox to 0pt{\vskip-8.6pt\parindent0pt\infotag
     \par\advance\trimheight by 2pc
     \vbox to \trimheight{\offinterlineskip\parindent0pt\vskip-2pc
     \hbox to \trimwidth{\vrule height4pc width0.1pt\raisebox{2pc}
   {\hspace*{-2pc}\vrule width4pc height0.1pt}\hfill\raisebox{2pc}
   {\vrule width4pc height0.1pt}\hspace*{-2pc}\vrule height4pc width0.1pt}\vfill
     \hbox to \trimwidth{\vrule height4pc width0.1pt\raisebox{2pc}
	{\hspace*{-2pc}\vrule width4pc height0.1pt}\hfill 
      \vrule height4pc width0.1pt\rlap{\hspace*{-2pc}\raisebox{2pc}{\vrule width4pc height0.1pt}}}}}}%%
%
\def\@outputpage{%
\begingroup           % the \endgroup is put in by \aftergroup
  \let \protect \noexpand
  \@resetactivechars
  \let\-\@dischyph
  \let\'\@acci\let\`\@accii\let\=\@acciii
  \let\\\@normalcr
  \let\par\@@par          %% 15 Sep 87
  \shipout \vbox{%
    \set@typeset@protect
    \aftergroup \endgroup
    \aftergroup \set@typeset@protect
                                % correct? or just restore by ending
                                % the group?
  \if@specialpage
    \global\@specialpagefalse\@nameuse{ps@\@specialstyle}%
  \fi
  \if@twoside
    \ifodd\count\z@ \let\@thehead\@oddhead \let\@thefoot\@oddfoot
         \let\@themargin\oddsidemargin
    \else \let\@thehead\@evenhead
       \let\@thefoot\@evenfoot \let\@themargin\evensidemargin
    \fi
  \fi
  \reset@font
  \normalsize
  \baselineskip\z@skip \lineskip\z@skip \lineskiplimit\z@
    \@begindvi\cropmarks
    \vskip \topmargin
    \moveright\@themargin \vbox {%
      \setbox\@tempboxa \vbox to\headheight{%
        \vfil
        \color@hbox
          \normalcolor
          \hb@xt@\textwidth {%
            \let \label \@gobble
            \let \index \@gobble
            \let \glossary \@gobble %% 21 Jun 91
            \@thehead
            }%
        \color@endbox
        }%                        %% 22 Feb 87
      \dp\@tempboxa \z@
      \box\@tempboxa
      \vskip \headsep
      \box\@outputbox
      \baselineskip \footskip
      \color@hbox
        \normalcolor
        \hb@xt@\textwidth{%
          \let \label \@gobble
          \let \index \@gobble      %% 22 Feb 87
          \let \glossary \@gobble   %% 21 Jun 91
          \@thefoot
          }%
      \color@endbox
      }%
    }%
\global \@colht \textheight
\stepcounter{page}%
\let\firstmark\botmark
}
%
\pagestyle{headings}
\pagenumbering{arabic}
\flushbottom
\onecolumn
\endinput
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


