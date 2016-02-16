% -*- coding: utf-8 -*-

% Clase LaTeX2e para la elaboración de trabajos de tesis en LCC
% Lic. en Ciencias de la Computación - Departamento de Matemáticas
%                      Universidad de Sonora

% Julio Waissman Vilanova
% modificado por Eduardo Acuña Yeomans


% IDENTIFICACIÓN
% ==============
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tesislcc}[2016/01/16 v0.95]

% DECLARACIONES PRELIMINARES
% ==========================
\newcommand{\BaseFontSize}{12pt}
\newcommand{\HeadHeightSize}{16pt}
\newcommand{\baseFontSize}[1]{\renewcommand{\BaseFontSize}{#1}}
\newcommand{\headHeightSize}[1]{\renewcommand{\HeadHeightSize}{#1}}

% OPCIONES
% ========
\DeclareOption{10pt}{
  \baseFontSize{10pt}
  \headHeightSize{13pt}
}
\DeclareOption{11pt}{
  \baseFontSize{11pt}
  \headHeightSize{13.6pt}
}
\DeclareOption{12pt}{
  \baseFontSize{12pt}
  \headHeightSize{16pt}
}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{book}
}
\ProcessOptions\relax
\ExecuteOptions{letterpaper, onecolumn, \BaseFontSize, twoside}

% CARGAR CLASE BASE
% =================
\LoadClassWithOptions{book}

% PAQUETES
% ========

% Codificación con UTF-8 (Esto sirve para escribir acentos y ñ  directamente en
% el documento)
\RequirePackage[utf8]{inputenc}

% Documento en Español
\RequirePackage[spanish]{babel}

% Entornos y comandos para una escritura matemática chula
\RequirePackage[sumlimits]{amsmath}
\RequirePackage{latexsym}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{empheq}
\RequirePackage{dsfont}
\RequirePackage{marvosym}

% Colores
\RequirePackage{color}

% Enlaces a páginas web
\RequirePackage{url}

% Capítulos con un estilo matón
\RequirePackage[Lenny]{fncychap}

% Gráficas y figuras
\RequirePackage{graphicx}
\RequirePackage{subfigure}
\RequirePackage{float}

% Listas compactas
\RequirePackage{paralist}

% Comandos para modificar espacios
\RequirePackage{setspace}

% Referencias bonitas en pdf
\RequirePackage[pdfborder={0 0 0}, colorlinks = true, citecolor = black,
linkcolor = black]{hyperref}

% Referencias múltiples en Español
\RequirePackage[spanish]{cleveref}


% Algoritmos y listado de código
\RequirePackage{listings}
\RequirePackage{minted}
\RequirePackage{algorithmic}
\RequirePackage[chapter]{algorithm}

% Márgenes del documento
\RequirePackage[lmargin=1.4 in, rmargin=.8 in, tmargin=1 in, bmargin=1 in,
includefoot]{geometry}

% Piés de página en la parte inferior del documento
\RequirePackage[bottom]{footmisc}

% Encabezados de página
\RequirePackage{fancyhdr}


% CONFIGURACIÓN DEL DOCUMENTO
% ===========================

% Espaciamiento de 1.3
\renewcommand{\baselinestretch}{1.3}

% Palabras reservadas de los algoritmos en Español
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

% Nombres para listados y algoritmos en Español
\renewcommand{\lstlistingname}{Código}
\renewcommand\listingscaption{Código}
\renewcommand\listoflistingscaption{Índice de códigos}
\renewcommand{\listalgorithmname}{Índice de Algoritmos}
\floatname{listing}{Código}
\floatname{algorithm}{Algoritmo}

% Tamaño del ancho y alto del texto
\setlength{\textwidth}{16 cm}
\setlength{\textheight}{8.7 in}

% Configuración de los encabezados
\pagestyle{fancy}
\fancyhf{}
\fancyhead{}
\fancyhead[LO]{\textsl{\leftmark}}
\fancyhead[RE]{\textsl{\rightmark}}
\fancyhead[RO,LE]{\thepage}
\renewcommand{\chaptermark}[1]{\markboth{{\textsl{\thechapter}. #1}}{}}
\renewcommand{\sectionmark}[1]{\markright{{\textsl{\thesection}. #1}}}
\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0pt}


% Tamaño del ancho y alto del encabezado
\setlength{\headheight}{\HeadHeightSize}
\setlength{\headheight}{1.5\headheight}


% Página en blanco antes de cada capítulo
\clearpage{\pagestyle{empty} \cleardoublepage}
\renewcommand{\cleardoublepage}{
	\clearpage
    \if@twoside
    	\ifodd
        	\c@page
        \else
    		\hbox{}
        	\vspace*{\fill}
        	\vspace{\fill}
        	\thispagestyle{empty}
        	\newpage
        	\if@twocolumn
        		\hbox{}
            	\newpage
        	\fi
     	\fi
    \fi
}

% Bibliografía con texto pequeño y poca separación
\let\oldthebibliography=\thebibliography
\renewenvironment{thebibliography}[1]{
  \small
  \begin{oldthebibliography}{#1}
    \setlength{\parskip}{2pt}
    \setlength{\itemsep}{0pt}
}{
  \end{oldthebibliography}
}

% Estilos para demostraciones matemáticas (cortesía de Olivia Gutú)
\newtheoremstyle{chido}{20pt}{20pt}{\it}{0pt}{\bfseries\sffamily}{.}{6pt}{}
\theoremstyle{chido}
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
\newenvironment{prueba}{
  {\noindent \sl Demostraci\'on. }
  \nopagebreak
}{
  {\scalebox{0.6}{$\blacksquare$}}
  \vspace{0.2in}
}

% Usar punto y no coma como separador decimal en fórmulas matemáticas
\spanishdecimal{.}

% Espaciado en gráficas y cuadros
\renewcommand{\topfraction}{0.95}
\renewcommand{\bottomfraction}{0.95}
\renewcommand{\textfraction}{0.05}
\renewcommand{\floatpagefraction}{0.8}

% Estilo de la bibliografía
\bibliographystyle{tesislcc/tesislcc}


% VARIABLES, COMANDOS Y ENTORNOS DE LA CLASE
% ==========================================

% Título del documento
\newcommand{\Titulo}{}
\newcommand{\titulo}[1]{\renewcommand{\Titulo}{#1}}

% Autor del documento (el alumno)
\newcommand{\Autor}{}
\newcommand{\autor}[1]{\renewcommand{\Autor}{#1}}

% Director del documento (el asesor)
\newcommand{\Director}{}
\newcommand{\director}[1]{\renewcommand{\Director}{#1}}

% Fecha del documento
\newcommand{\Fecha}{}
\newcommand{\fecha}[1]{\renewcommand{\Fecha}{#1}}

% Para insertar la portada
\newcommand{\frontcover}{\input{tesislcc/portada.tex}} % Comando en Inglés
\newcommand{\portada}{\input{tesislcc/portada.tex}}    % Comando en Español

% Para insertar la introducción de la tesis
\newcommand{\introduction}{     % Comando en Inglés
  \chapter*{Introducción}
  \addcontentsline{toc}{chapter}{Introducción}\markright{Introducción}
}
\newcommand{\introduccion}{     % Comando en Español
  \chapter*{Introducción}
  \addcontentsline{toc}{chapter}{Introducción}
  \markright{Introducción}
}

% Para insertar las conclusiones de la tesis
\newcommand{\conclusions}{      % Comando en Inglés
  \chapter*{Conclusiones}
  \addcontentsline{toc}{chapter}{Conclusiones}
  \markboth{\MakeUppercase{Conclusiones}}{\MakeUppercase{Conclusiones}}
}
\newcommand{\conclusiones}{     % Comando en Español
  \chapter*{Conclusiones}
  \addcontentsline{toc}{chapter}{Conclusiones}
  \markboth{\MakeUppercase{Conclusiones}}{\MakeUppercase{Conclusiones}}
}

% Para insertar la bilbiografía
\newcommand{\bibliografia}[1]{  % Comando en Español
  \bibliography{#1}
  \addcontentsline{toc}{chapter}{Bibliografía}
  \markboth{\MakeUppercase{Bibliografía}}{\MakeUppercase{Bibliografía}}
}

% Para secciones no enumeradas
\newcommand{\xsection}[1]{      % Comando en Inglés
  \section*{#1}
  \addcontentsline{toc}{section}{#1}
}
\newcommand{\xseccion}[1]{      % Comando en Español
  \section*{#1}
  \addcontentsline{toc}{section}{#1}
}

% Para escribir el resumen de la tesis
\newenvironment{summary}{       % Entorno en Inglés
  \chapter*{Resumen}
  \thispagestyle{empty}
}{}
\newenvironment{resumen}{       % Entorno en Español
  \chapter*{Resumen}
  \thispagestyle{empty}
}{}

% Para escribir los agradecimientos de la tesis (opcional)
\newenvironment{acknowledgements}{ % Entorno en Inglés
  \chapter*{Agradecimientos}
  \thispagestyle{empty}
}{}
\newenvironment{agradecimientos}{ % Entorno en Español
  \chapter*{Agradecimientos}
  \thispagestyle{empty}
}{}

% Para escribir la dedicatoria de la tesis (opcional)
\newenvironment{dedication}{    % Entorno en Inglés
  \cleardoublepage\thispagestyle{empty}
  \begin{center} 
  \end{center}
  \vspace{15 cm}
  \begin{flushright}\it
}{
  \end{flushright}
}
\newenvironment{dedicatoria}{    % Entorno en Español
  \cleardoublepage\thispagestyle{empty}
  \begin{center} 
  \end{center}
  \vspace{15 cm}
  \begin{flushright}\it
}{
  \end{flushright}
}

\endinput
