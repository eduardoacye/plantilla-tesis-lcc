\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{tesislcc}[2011/01/15 v0.9]
\def\@tempa#1#2\@nil{\edef\@classname{#1}}
\expandafter\@tempa\@currnamestack{}{}{}\@nil
\ifx\@classname\@empty \edef\@classname{\@currname}\fi



\def\baseFontSize#1{\gdef\@BaseFontSize{#1}}
\def\headHeightSize#1{\gdef\@HeadHeightSize{#1}}
\def\@BaseFontSize{12pt}
%\def\@HeadHeightSize{14.5pt}
\def\@HeadHeightSize{16pt}
\DeclareOption{10pt}{\baseFontSize{10pt}\headHeightSize{13.0pt}}
\DeclareOption{11pt}{\baseFontSize{11pt}\headHeightSize{13.6pt}}
\DeclareOption{12pt}{\baseFontSize{12pt}\headHeightSize{14.5pt}}



\ExecuteOptions{}
\ProcessOptions\relax



\LoadClass[letterpaper,onecolumn,\@BaseFontSize,twoside]{book}

\def\titulo#1{\gdef\Titulo{#1}}
\def\autor#1{\gdef\Autor{#1}}
\def\director#1{\gdef\Director{#1}}
\def\anio#1{\gdef\Anio{#1}}

\newlength{\@MarginSize}
\setlength{\@MarginSize}{1 in}
\RequirePackage[lmargin=1.4 in, rmargin=.8 in, tmargin=1 in, bmargin=1 in, includefoot]{geometry}

\setlength{\headheight}{1.5\headheight}
\setlength{\textwidth}{16 cm}
\setlength{\textheight}{8.7 in}
\setlength{\headheight}{\@HeadHeightSize}

\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}

\RequirePackage{graphicx}
\RequirePackage{subfigure}
\RequirePackage{float}

\RequirePackage[sumlimits]{amsmath}
\RequirePackage{latexsym}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{empheq}
\RequirePackage{dsfont}
\RequirePackage{marvosym}
\RequirePackage{color}

\RequirePackage{url}

\RequirePackage[Lenny]{fncychap}

\RequirePackage{setspace}
\renewcommand{\baselinestretch}{1.3}

\RequirePackage[pdfborder={0 0 0}, colorlinks = true, citecolor = black, linkcolor = 
black]{hyperref}
\RequirePackage[spanish]{cleveref}


% Para algoritmos y listado de código
\RequirePackage{listings}
\RequirePackage{minted}
\renewcommand{\lstlistingname}{Código}
\floatname{listing}{Código}
\renewcommand\listingscaption{Código}
\renewcommand\listoflistingscaption{Índice de códigos}





\RequirePackage{algorithmic}
\RequirePackage[chapter]{algorithm}

\renewcommand{\listalgorithmname}{Índice de Algoritmos}
\renewcommand{\algorithmicrequire}{\textbf{Entrada:}} 
\renewcommand{\algorithmicensure}{\textbf{Salida:}} 
\renewcommand{\algorithmicend}{\textbf{fin}} 
\renewcommand{\algorithmicif}{\textbf{si}} 
\renewcommand{\algorithmicthen}{\textbf{entonces}} 
\renewcommand{\algorithmicelse}{\textbf{si no}} 
\renewcommand{\algorithmicelsif}{\algorithmicelse\ y \algorithmicif} 
\renewcommand{\algorithmicendif}{\algorithmicend\ \algorithmicif} 
\renewcommand{\algorithmicfor}{\textbf{para}} 
\renewcommand{\algorithmicforall}{\textbf{para todo}} 
\renewcommand{\algorithmicdo}{\textbf{hacer}} 
\renewcommand{\algorithmicendfor}{\algorithmicend\ \algorithmicfor} 
\renewcommand{\algorithmicwhile}{\textbf{mientras}} 
\renewcommand{\algorithmicendwhile}{\algorithmicend\ \algorithmicwhile} 
\renewcommand{\algorithmicloop}{\textbf{lazo}} 
\renewcommand{\algorithmicendloop}{\algorithmicend\ \algorithmicloop} 
\renewcommand{\algorithmicrepeat}{\textbf{repetir}} 
\renewcommand{\algorithmicuntil}{\textbf{hasta}} 
\renewcommand{\algorithmicprint}{\textbf{imprimir}} 
\renewcommand{\algorithmicreturn}{\textbf{regresar}} 
\renewcommand{\algorithmictrue}{\textbf{verdadero}} 
\renewcommand{\algorithmicfalse}{\textbf{falso}} 
\renewcommand{\algorithmiccomment}[1]{$\quad\vartriangleright$ #1}
\renewcommand{\algorithmicto}{\textbf{hasta}}
\floatname{algorithm}{Algoritmo}


\RequirePackage[bottom]{footmisc}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead{}
\fancyhead[LO]{\textsl{\leftmark}}
\fancyhead[RE]{\textsl{\rightmark}}
\fancyhead[RO,LE]{\thepage}


\renewcommand{\chaptermark}[1]{\markboth{{\textsl{\thechapter}. #1}}{}}
\clearpage{
\pagestyle{empty} \cleardoublepage} \makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
        \hbox{}
        \vspace*{\fill}
        \vspace{\fill}
        \thispagestyle{empty}
        \newpage
        \if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother

\renewcommand{\sectionmark}[1]{\markright{{\textsl{\thesection}. #1}}}

\renewcommand{\headrulewidth}{0.3pt}

\renewcommand{\footrulewidth}{0pt}

\let\oldthebibliography=\thebibliography
\let\endoldthebibliography=\endthebibliography
\renewenvironment{thebibliography}[1]{
  \small
  \begin{oldthebibliography}{#1}
    \setlength{\parskip}{2pt}
    \setlength{\itemsep}{0pt}
  }{  \end{oldthebibliography} 
}

\newtheoremstyle{chido}{20pt}{20pt}{\it}%
{0pt}{\bfseries\sffamily}{.}{6pt}{} \theoremstyle{chido}
\newtheorem{teo}{Teorema}[chapter]
\newtheorem{lema}[teo]{Lema}
\newtheorem{lem}[teo]{Lema}
\newtheorem{cor}[teo]{Corolario}
\newtheoremstyle{chido2}{20pt}{20pt}{}{0pt}{\bfseries\sffamily}{.}{6pt}{}
\theoremstyle{chido2}
\newtheorem{defi}[teo]{Definici\'on}
\newtheoremstyle{chido3}{20pt}{20pt}{}{0pt}{\bfseries\sffamily}{.}{6pt}{}
\theoremstyle{chido3}
\newtheorem{ejem}[teo]{Ejemplo}
\newenvironment{prueba}
    {{\noindent \sl Demostraci\'on. }\nopagebreak}%
    {{\scalebox{0.6}{$\blacksquare$}}\vspace{0.2in}}

\spanishdecimal{.}



\renewcommand{\topfraction}{0.95}
\renewcommand{\bottomfraction}{0.95}
\renewcommand{\textfraction}{0.05}
\renewcommand{\floatpagefraction}{0.8}

% Comandos
\newcommand{\frontcover}{\input{tesislcc/portada.tex}}

\newcommand{\introduccion}{\chapter*{Introducción}\addcontentsline{toc}{chapter}{Introducción}\markright{Introducción}
}

\newcommand{\conclusiones}{\chapter*{Conclusiones}\addcontentsline{toc}{chapter}{Conclusiones}\markboth{\MakeUppercase{Conclusiones}}{\MakeUppercase{Conclusiones}}}

\newcommand{\bibliografia}[1]{\bibliography{#1}\addcontentsline{toc}{chapter}{Bibliografía}\markboth{\MakeUppercase{Bibliografía}}{\MakeUppercase{Bibliografía}}}

\newcommand{\xsection}[1]{\section*{#1}\addcontentsline{toc}{section}{#1}}

% Entornos
\newenvironment{summary}{\chapter*{Resumen}\thispagestyle{empty}}{}

\newenvironment{acknowledgements}{\chapter*{Agradecimientos}\thispagestyle{empty}}{}

\newenvironment{dedication}{\cleardoublepage\thispagestyle{empty}\begin{center} 
\end{center}\vspace{15 cm}\begin{flushright}\it}{\end{flushright}}

\bibliographystyle{tesislcc/tesislcc}

\endinput
