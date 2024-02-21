\def\filename{uftex2.dtx}
\def\fileversion{v1.6.1}
\def\filedate{2016/11/11}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass {uftdocs} [\filedate\ \fileversion\ Classe personalizada para documentos da UFT]

\def\@@ptsize{12pt}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions \relax
\LoadClass[oneside,\@@ptsize]{book}

\RequirePackage{enumitem}
\RequirePackage{indentfirst}
\RequirePackage[sharp]{easylist}
\RequirePackage[normalem]{ulem}
% --------------- A codificação de fonte T1 é uma codificação de 8 bits e utiliza fontes que têm 256 glifos
\RequirePackage[T1]{fontenc}
% --------------- Idioma da texto, a acentuação pode ser escrita normalmente
\RequirePackage[english,brazil]{babel}
% --------------- Codificação do arquivo
\RequirePackage[utf8]{inputenc}
% --------------- Este pacote pode desativar toda a hifenização ou ativar a hifenização de fontes não-alfabéticos ou monoespaçadas.
\RequirePackage{hyphenat}
% --------------- Cabeçalho e rodapé
%\RequirePackage{fancyhdr}
% --------------- Utilização de cores
\RequirePackage{xcolor}
\definecolor{azul}{RGB}{000,074,128}
\definecolor{verde}{RGB}{000,133,119}
\definecolor{amarelo}{RGB}{253,185,019}
\definecolor{cinza}{RGB}{102,102,102}
\definecolor{preto}{RGB}{0,0,0}
\definecolor{branco}{RGB}{255,255,255}
\definecolor{cortexto}{RGB}{255,255,255}
\definecolor{cor}{RGB}{102,102,102}

% --------------- Margens
\RequirePackage[a4paper,top=2cm,bottom=2cm,left=3.0cm,right=1.5cm]{geometry} 
\RequirePackage{pdfpages}
% --------------- Utilização da marca d'agua
\RequirePackage{wallpaper}  
% --------------- Usamos arquivos pdf/png como figuras
\RequirePackage{graphicx}

\RequirePackage{titlesec}

\RequirePackage{newtxmath,newtxtext}

\RequirePackage{hyperref}

\RequirePackage{helvet}

\RequirePackage{lineno}

% --------------- Utilização de comandos básicos como \ifthenelse
\RequirePackage{ifthen}
% --------------- Garantir que dois ou mais blocos de texto ocupam o mesmo espaço horizontal na página.
\RequirePackage{eqparbox}


\newcommand{\mybox}[1]{\par\noindent\colorbox{cor}
{\parbox{\textwidth-2\fboxsep\relax}{\color{cortexto}\centering #1}}}

\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}

\newcommand\address[1]{%
  \global\def\local@address{#1}%
}

\newcommand\cep[1]{%
  \global\def\local@cep{#1}%
}

\newcommand\phone[1]{%
  \global\def\local@phone{#1}%
}

\newcommand\mail[1]{%
  \global\def\local@mail{#1}%
}

\newcommand\department[1]{%
  \global\def\local@department{#1}%
}

\newcommand\city[1]{%
  \global\def\local@city{#1}%
}

\renewcommand\date[3]{%
  \day=#1
  \month=#2
  \year=#3
}

\newcommand\monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}

\newcommand\global@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}

\def\um{Primeiro}
\def\dois{Segundo}
\def\tres{Terceiro} 
\def\quatro{Quarto}
\def\cinco{Quinto}
\def\seis{Sexto}
\def\sete{Sétimo}
\def\oito{Oitavo}
\def\nove{Nono}
\def\dez{Décimo}
\def\onze{Décimo Primeiro}
\def\doze{Décimo Segundo}
\def\treze{Décimo Terceiro} 
\def\quatorze{Décimo Quarto}
\def\quinze{Décimo Quinto}
\def\dezesseis{Décimo Sexto}
\def\dezessete{Décimo Sétimo}
\def\dezoito{Décimo Oitavo}
\def\dezenove{Décimo Nono}
\def\vinte{Vigésimo}
\def\vinteum{Vigésimo Primeiro}
\def\vintedois{Vigésimo Segundo}
\def\vintetres{Vigésimo Terceiro} 
\def\vintequatro{Vigésimo Quarto}
\def\vintecinco{Vigésimo Quinto}
\def\vinteseis{Vigésimo Sexto}
\def\vintesete{Vigésimo Sétimo}
\def\vinteoito{Vigésimo Oitavo}
\def\vintenove{Vigésimo Nono}
\def\trinta{Trigésimo}
\def\trintaum{Trigésimo Primeiro}

\newcommand\local@dayname{\ifcase\number\day\or
  \um\or \dois\or \tres\or \quatro\or \cinco\or \seis\or \sete\or \oito\or \nove\or \dez\or
  \onze\or \doze\or \treze\or \quatorze\or \quinze\or \dezesseis\or \dezessete\or \dezoito\or \dezenove\or \vinte \or \vinteum \or \vintedois\or \vintetres\or \vintequatro\or \vintecinco\or \vinteseis\or \vintesete\or \vinteoito \or \vintenove \or \trinte\or \trintaum \fi}

\newcommand{\descricao}[1]{
  \global\def\local@descricao{#1}
}

\renewcommand\maketitle{
%\begin{vwcol}[widths={0.1,0.5},rule=1pt] 
\newpage
\thispagestyle{empty}
\noindent
\begin{minipage}{.8\textwidth}
\begin{flushright}\renewcommand{\familydefault}{\sfdefault}\normalfont
UNIVERSIDADE FEDERAL DO {\bf TOCANTINS} \vspace{-.4\baselineskip} \\
CAMPUS DE {\bf\MakeUppercase \local@city} \vspace{-.4\baselineskip} \\
CURSO DE  {\bf\MakeUppercase \local@department} \vspace{-.4\baselineskip}\\
\noindent\makebox[\linewidth]{\rule{\textwidth}{.5pt}}\vspace{-.4\baselineskip}
\small\fontfamily{phv}\fontseries{mc}\selectfont
\local@address\ | \local@cep\ | \local@city /TO \vspace{-.4\baselineskip} \\
\local@phone\ | www.uft.edu.br | \local@mail 
\end{flushright}
\end{minipage}% This must go next to `\end{minipage}`
\begin{minipage}{.225\textwidth}
\centering
\includegraphics[scale=.4]{logouft}
\end{minipage}
 %\end{vwcol}
 
\begin{center}
\mybox{\MakeUppercase{\bf\local@title}}
\end{center}
      \hfill%
	\begin{minipage}{0.5\textwidth}
		\it\local@descricao
	\end{minipage}
	%\vspace{\baselineskip}
}

\newcommand{\colorsection}[2]{%
  \colorbox{cor}{\parbox{\dimexpr\textwidth-2\fboxsep}{\color{cortexto}\filcenter\MakeUppercase{ #1~.~#2}}}}
\renewcommand{\thechapter}{\Roman{chapter}}
\titleformat{\chapter}
  {\bf}
  {}
  {-5pt}
  {\colorsection\thechapter}
\titlespacing*{\chapter}{0pt}{15pt}{\baselineskip}


\newcommand{\colorsectionss}[2]{%
  \colorbox{cor}{\parbox{\dimexpr\textwidth-2\fboxsep}{\color{cortexto} #1~.~#2}}}
\renewcommand{\thesection}{\arabic{section}}
\titleformat{\section}[display]
  {\bf}
  {}
  {-5pt}
  {\colorsectionss\thesection}
\titlespacing*{\section}{0pt}{0pt}{\baselineskip}


\renewpagestyle{plain}{%
  \setfoot{}{}{\thepage}%
}
\pagestyle{plain}

\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

\setlength{\parindent}{2.5cm}
\renewcommand{\baselinestretch}{1.5}

%\makeatletter
\patchcmd{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi}{}{}{}
%\makeatother

%%risca partes do texto
\newcommand{\cortado}[1]{\sout{#1}}

\newcommand\local@advisorstring{Orientador}
\newcommand\local@coadvisorstring{Coorientador}
\newcount\@advisor\@advisor0
\newcommand\advisor[4]{%
  \global\@namedef{uftAdvisorTitle:\expandafter\the\@advisor}{#1}
  \global\@namedef{uftAdvisorName:\expandafter\the\@advisor}{#2}
  \global\@namedef{uftAdvisorSurname:\expandafter\the\@advisor}{#3}
  \global\@namedef{uftAdvisorDegree:\expandafter\the\@advisor}{#4}
  \global\advance\@advisor by 1
}

\newcount\@examiner\@examiner0
\newcommand\examiner[3]{%
  \global\@namedef{uftExaminer:\expandafter\the\@examiner}{#1\ #3\ #2}
  \global\advance\@examiner by 1
}

\newcommand\status[1]{%
  \global\def\local@status{#1}%
}

\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}

\newcount\@titlePG\@titlePG0
\newcommand\titlePG[1]{%
  \global\def\local@titlePG{#1}%
  \global\advance\@titlePG by 1
}

\newcommand\class[1]{%
  \ifthenelse{\equal{#1}{TCC1}}
    {\global\def\local@class{Projeto de Graduação I}}{}
  \ifthenelse{\equal{#1}{TCC2}}
    {\global\def\local@class{Projeto de Graduação II}}{}
  \ifthenelse{\equal{#1}{ES}}
    {\global\def\local@class{Estágio Supervisionado}}{}
}

\newcommand\numberATA[1]{%
  \global\def\local@numberATA{#1}%
}

\newcommand\nota[2]{%
  \global\def\local@notanumero{#1}%
  \global\def\local@notaextenso{#2}%
}

\newcommand\term[2]{
  \global\def\@termyear{#1}
  \global\def\@termnumber{#2}
}

\newcommand\makeAtaPG{
\title{Ata de defesa da disciplina de \local@class\ }
\descricao{}
\maketitle

\begin{linenumbers}
\noindent Ao \local@dayname\ dia do mês de \global@monthname\ de \number\year\, realizou-se a defesa de Projeto de Graduação, da disciplina de \local@class\ do(a) discente {\bf \@authname\ \@authsurn }, do curso de \local@department\, do Campus Universiário de \local@city\, da Universidade Federal do Tocantins (UFT), intitulado ``\MakeUppercase{\local@titlePG}'', realizado sob a responsabilidade do  
 \count1=0
    %\toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
        \local@advisorstring\ \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \
    \else
       e do \local@coadvisorstring\ \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ 
    \fi
    \advance\count1 by 1}.
 Tendo como Comissão Avaliadora, os professores: 
    \count1=0
        \@whilenum \count1<\@examiner \do {
            \protect\csname uftExaminer:\the\count1 \endcsname ,
            \advance\count1 by 1}
os quais após avaliação, consideraram o(a) discente \MakeUppercase{\local@status}. Nada mais tendo a constar, assinaram esta Ata os presentes:

     \begin{center}
        \count1=0
        \@whilenum \count1<\@examiner \do {
            \vskip56\p@ \baselineskip12pt
        \eqmakebox[signture@list][c]{\hrulefill}\\
        \eqmakebox[signture@list][c]{%
            \ \ \ \protect\csname uftExaminer:\the\count1 \endcsname\ \ \ }\\
            \advance\count1 by 1}
     \end{center}
\end{linenumbers}
}

\newcommand\makeAtaPGnota{
\title{Ata de defesa da disciplina de \local@class\ }
\descricao{}
\maketitle

\begin{linenumbers}
\noindent Ao \local@dayname\ dia do mês de \global@monthname\ de \number\year\, realizou-se a defesa de Projeto de Graduação, da disciplina de \local@class\ do(a) discente {\bf \@authname\ \@authsurn }, do curso de \local@department\, do Campus Universiário de \local@city\, da Universidade Federal do Tocantins (UFT), intitulado ``\MakeUppercase{\local@titlePG}'', realizado sob a responsabilidade do  
 \count1=0
    %\toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
        \local@advisorstring\ \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \
    \else
       e do \local@coadvisorstring\ \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ 
    \fi
    \advance\count1 by 1}.
% Tendo como Comissão Avaliadora, os professores: 
 %   \count1=0
 %       \@whilenum \count1<\@examiner \do {
  %          \protect\csname uftExaminer:\the\count1 \endcsname ,
  %          \advance\count1 by 1}
%os quais após avaliação, atribuíram a média final \local@notanumero (\local@notaextenso ), consideraram o(a) discente \MakeUppercase{\local@status}. Nada mais tendo a constar, assinaram esta Ata os presentes:

\noindent Atribuíram a Nota Final \local@notanumero\ (\local@notaextenso ), pelo trabalho, tendo sido considerado \MakeUppercase{\local@status}. Nada mais tendo a constar, assinam esta Ata os seguintes componentes da banca examinadora:

     \begin{center}
        \count1=0
        \@whilenum \count1<\@examiner \do {
            \vskip56\p@ \baselineskip12pt
        \eqmakebox[signture@list][c]{\hrulefill}\\
        \eqmakebox[signture@list][c]{%
            \ \ \ \protect\csname uftExaminer:\the\count1 \endcsname\ \ \ }\\
            \advance\count1 by 1}
     \end{center}
\end{linenumbers}
}

\newlength{\linespagelength}
%\newcounter{linespage}
\newcommand\linespage[2][0.4pt]{
  \begingroup
  \baselineskip0pt
  \setlength{\linespagelength}{12cm}
  %\setcounter{linespage}{0}
  \loop
  \addtolength{\linespagelength}{-#2}
  %\stepcounter{linespage}
  \ifdim\linespagelength>0pt
  \vbox to #2{\vss\noindent\raise\dimexpr#1+1pt\relax\hbox to 0pt{%
    %\arabic{linespage}
  \hss}\rule{\linewidth}{#1}}%\nointerlineskip
  \repeat
  \endgroup
}

\newcommand\makeRecomendacao{
\title{Recomendações de \local@class\ }
\descricao{}
\toks@={}
\count2=0
        \@whilenum \count2<\@examiner \do { %\renewcommand{\baselinestretch}{1.5} 
\maketitle

Recomendações exigidas do trabalho intitulado ``\MakeUppercase{\local@titlePG}'', na disciplina de \local@class\ do(a) discente \@authname\ \@authsurn\, do curso de \local@department\, do Campus Universiário de \local@city\, da Universidade Federal do Tocantins (UFT), sob a responsabilidade do  
 \count1=0
    %\toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
        \local@advisorstring\ \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \
    \else
       e \local@coadvisorstring\ \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ 
    \fi
    \advance\count1 by 1}.
    
\linespage[1pt]{1cm}

\vfill
\begin{flushright}
\local@city\ / TO, \number\day\ de \MakeLowercase{\global@monthname\ } de \number\year \par
\end{flushright}
\vfill
     \begin{center}
        %\count1=0
        %\@whilenum \count1<\@examiner \do {
            \vskip26\p@ \baselineskip12pt
        \eqmakebox[signture@list][c]{\hrulefill}\\
        \eqmakebox[signture@list][c]{%
            \ \ \ \protect\csname uftExaminer:\the\count2 \endcsname\ \ \ }\\
 
     \end{center}
     
                \advance\count2 by 1}
}


\newcommand\makeDeclaracaoPG{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\title{Declaração de pariticipação de banca examinadora de \local@class\ }
\descricao{}

\toks@={}
\count2=0
        \@whilenum \count2<\@examiner \do { %\renewcommand{\baselinestretch}{1.5} 
\maketitle

%\begin{linenumbers}
Declaro para os devidos fins de direito, que o(a) 
\protect\csname uftExaminer:\the\count2 \endcsname\ 
 foi avaliador(a) na banca examinadora  da disciplina de \local@class\ do(a) discente {\bf \@authname\ \@authsurn }, do curso de \local@department\, do Campus Universiário de \local@city\, da Universidade Federal do Tocantins (UFT), intitulado ``\MakeUppercase{\local@titlePG}'', realizado sob a responsabilidade do  
 \count1=0
    %\toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
        \local@advisorstring\ \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \
    \else
       e \local@coadvisorstring\ \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ 
    \fi
    \advance\count1 by 1}.

\vspace{2.5cm}
\begin{flushright}
\local@city\ / TO, \number\day\ de \MakeLowercase{\global@monthname\ } de \number\year \par
\end{flushright}
\vspace{2.5cm}
\begin{center}
  \vskip26\p@ \baselineskip12pt
  \eqmakebox[signture@list][c]{\hrulefill}\\
  \eqmakebox[signture@list][c]{%
  \ifnum0=\@titlePG 
      Professor de \local@class\ 
  \else 
      Representante da Comissão de Projeto de Graduação 
   \fi}
\end{center}
\vspace{2.5cm}
\begin{center}
  \vskip26\p@ \baselineskip12pt
  \eqmakebox[signture@list][c]{\hrulefill}\\
  \eqmakebox[signture@list][c]{%
  Coordenação do Curso de \local@department\ }
\end{center}
 \advance\count2 by 1}
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\title{Declaração de orientação de \local@class\ }
\descricao{}

\maketitle

%\begin{linenumbers}
Declaro para os devidos fins de direito, que o(a)
 \count1=0
    %\toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
        \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname  uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ foi \MakeLowercase{\local@advisorstring}
    \else
       e o(a) \csname uftAdvisorTitle:\the\count1 \endcsname \ 
        \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ foi \MakeLowercase{\local@coadvisorstring}
    \fi
    \advance\count1 by 1}
    \ifnum0=\@titlePG do(a) discente \@authname\ \@authsurn , na disciplina de \local@class\  do curso de \local@department , semestre letivo \@termyear\ / \@termnumber , Campus Universiário de \local@city , da Universidade Federal do Tocantins (UFT). 
    \else
do Projeto de Graduação,  intitulado ``\MakeUppercase{\local@titlePG}'', do(a) discente \@authname\ \@authsurn , na disciplina de \local@class\  do curso de \local@department , semestre letivo \@termyear\ / \@termnumber , Campus Universiário de \local@city , da Universidade Federal do Tocantins (UFT).
    \fi   \par
\vspace{2.5cm}
\begin{flushright}
\local@city\ / TO, \number\day\ de \MakeLowercase{\global@monthname\ } de \number\year \par
\end{flushright}
\vspace{2.5cm}
\begin{center}
  \vskip26\p@ \baselineskip12pt
  \eqmakebox[signture@list][c]{\hrulefill}\\
  \eqmakebox[signture@list][c]{%
  \ifnum0=\@titlePG 
      Professor de \local@class\ 
  \else 
      Representante da Comissão de Projeto de Graduação 
   \fi}
\end{center}
\vspace{2.5cm}
\begin{center}
  \vskip26\p@ \baselineskip12pt
  \eqmakebox[signture@list][c]{\hrulefill}\\
  \eqmakebox[signture@list][c]{%
  Coordenação do Curso de \local@department\ }
\end{center}

}

\DeclareOption{consuni}{
   \colorlet{cor}{azul}
}

\DeclareOption{consepe}{
   \colorlet{cor}{verde}
}

\DeclareOption{geral}{
   \colorlet{cor}{amarelo}
   \colorlet{cortexto}{preto}
}

\DeclareOption{titlewithdate}{
\renewcommand\title[1]{%
  \global\def\local@title{#1 de \number\day\ de \global@monthname\ de \number\year}%
}
}

\ProcessOptions\relax


%% Do pacote easylist: listas segundo a norma: incisos, alíneas, itens.
\ListProperties(Numbers1=R,Numbers2=l,Numbers3=a,FinalMark1={~--},FinalMark2={)},Hide2=1,Hide3=2,Margin1=2.5cm,Margin2=3cm,Margin3=3.5cm,Align=move) %Space*=10pt entre mesmo nível,Space=9pt,Space*=9pt
%Adiciona: Margin=\the\parindent,Progressive=3ex, 27-04-2015Progressive=3em,Margin1=5em,Align=move

%%%from the etoolbox package: restart numbering easylist
%\AtBeginEnvironment{easylist}
%{\ListProperties(Start1=1)}
%{}
%{}

%\renewcommand*{\chapterheadstartvskip}{\vspace*{-12pt}}
%\renewcommand*{\chapterheadendvskip}{\vspace*{-24pt}}



\newcounter{artigo}
\newcommand{\artigo}{\refstepcounter{artigo} % 
	\ifnum\theartigo<10 %
	{\bfseries Art.~\arabic{artigo}º.~}%
	\else
	{\bfseries Art. \arabic{artigo}.~}%
	\fi
	%Art. \arabic{artigo}.~
	}

\newcounter{paragrafo}
\newcommand{\paragrafo}{\refstepcounter{paragrafo} % 
	\ifnum\theparagrafo<10 %
	\S~\arabic{paragrafo}º.~%
	\else
	\S~\arabic{paragrafo}.~%
	\fi
}

\newenvironment{paragrafos}{\setcounter{paragrafo}{0}
	\setlength{\parindent}{0pt}
	\leftskip=2.5cm
	%\begin{addmargin}[4em]{0pt} 
	}
	{%\end{addmargin}
		}
	
	
\endinput
