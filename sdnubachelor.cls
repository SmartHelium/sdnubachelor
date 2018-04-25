%%
%% This is file `sdnubachelor.cls',
%%
%%
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%%
%%    http://www.latex-project.org/lppl.txt
%%
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sdnubachelor}[2018/02/15 v1.0 SDNU Bachelor Thesis By Mannix]

\LoadClassWithOptions{ctexart}

\RequirePackage[a4paper,top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm]{geometry}
\pagestyle{plain}

\RequirePackage{tabu}
\RequirePackage{makecell}

\RequirePackage{titletoc}
\hypersetup{hidelinks}
\renewcommand{\contentsname}{\zihao{3} 目~~录}
\titlecontents{section}[1.2em]
{\vspace*{3mm}\zihao{4}}
{\contentslabel{1em}}
{\hspace*{-1.2em}}
{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[4.2em]
{\vspace*{1mm}\zihao{4}}
{\contentslabel{2em}}
{}
{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsubsection}[7.2em]
{\vspace*{1mm}\zihao{4}}
{\contentslabel{2.5em}}
{}
{\titlerule*[0.5pc]{$\cdot$}\contentspage}

\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}

\graphicspath{{data/img/}}

\usepackage{caption}
\captionsetup{hypcap=true}

\RequirePackage{amsthm}
\newtheoremstyle{ctstyle}{2pt}{2pt}{\kaishu}{2em}{\bfseries}{.}{1em}{}
\theoremstyle{ctstyle}
\newtheorem{theorem}{定理}
\newtheorem{definition}{定义}

\renewcommand{\proofname}{证明}
%\renewcommand*{\qedsymbol}{[证毕]}
\makeatletter
\renewenvironment{proof}[1][\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep0\p@\@plus6\p@\labelsep1em\relax
	\trivlist
	\item[\hskip\labelsep\indent
	\bfseries
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
\makeatother

\RequirePackage{titlesec}
\titlespacing{\subsection}{0pt}{6pt}{3pt}
\titlespacing{\subsubsection}{0pt}{6pt}{3pt}

%\ctexset{
%	section/name = {,、},
%	section/number = \chinese{section},
%	section/aftername = ~,
%	section/format += \zihao{-4}\bfseries\centering,
%	subsection/name = {（,）},
%	subsection/number = \chinese{subsection},
%	subsection/aftername = \empty,
%	subsection/format += \zihao{-4}\bfseries,
%	subsubsection/name = {,、},
%	subsubsection/number = \arabic{subsubsection},
%	subsubsection/aftername = \empty,
%	subsubsection/format += \zihao{-4}\bfseries,
%}

\ctexset{
	section/format += \zihao{-4}\bfseries\centering,
	subsection/format += \zihao{-4}\bfseries,
	subsubsection/format += \zihao{-4}\bfseries,
	bibname = [参考文献],
}

\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{listings}
%\usepackage{xcolor}
%\lstset{
%	numbers=left, 
%	numberstyle= \tiny, 
%	keywordstyle= \color{ blue!70},
%	commentstyle= \color{red!50!green!50!blue!50}, 
%	frame=shadowbox, 
%	rulesepcolor= \color{ red!20!green!20!blue!20} ,
%	escapeinside=``,
%	xleftmargin=2em,xrightmargin=0.5em, aboveskip=0.5em,
%	framexleftmargin=1.5em
%} 
\lstset{
	language=C,
	basicstyle=\small\ttfamily,
	numbers=left,
	numbersep=5pt,
	xleftmargin=20pt,
	frame=tb,
	framexleftmargin=20pt
}
\renewcommand\lstlistingname{代码}
\renewcommand*\thelstnumber{\arabic{lstnumber}:}
\DeclareCaptionFormat{mylst}{\hrule#1#2#3}
\captionsetup[lstlisting]{format=mylst,labelfont=bf,singlelinecheck=off,labelsep=space}

\DeclareRobustCommand{\sdnutitlechs}{}
\DeclareRobustCommand{\sdnutitleen}{}
\DeclareRobustCommand{\sdnutitle}[2]{
	\renewcommand{\sdnutitlechs}{#1}
	\renewcommand{\sdnutitleen}{#2}
}

\DeclareRobustCommand{\sdnuauthorchs}{}
\DeclareRobustCommand{\sdnuauthorid}{}
\DeclareRobustCommand{\sdnuauthor}[2]{
	\renewcommand{\sdnuauthorchs}{#1}
	\renewcommand{\sdnuauthorid}{#2}
}

\DeclareRobustCommand{\sdnumentorchs}{}
\DeclareRobustCommand{\sdnumentor}[1]{
	\renewcommand{\sdnumentorchs}{#1}
}

\DeclareRobustCommand{\sdnucollegechs}{}
\DeclareRobustCommand{\sdnumajorchs}{}
\DeclareRobustCommand{\sdnuclasschs}{}
\DeclareRobustCommand{\sdnuinfo}[3]{
	\renewcommand{\sdnucollegechs}{#1}
	\renewcommand{\sdnumajorchs}{#2}
	\renewcommand{\sdnuclasschs}{#3}
}

\DeclareRobustCommand{\sdnuyear}{}
\DeclareRobustCommand{\sdnumon}{}
\DeclareRobustCommand{\sdnuday}{}
\DeclareRobustCommand{\sdnudate}[3]{
	\renewcommand{\sdnuyear}{#1}
	\renewcommand{\sdnumon}{#2}
	\renewcommand{\sdnuday}{#3}
}

\DeclareRobustCommand{\sdnukeywchs}{}
\DeclareRobustCommand{\sdnukeywen}{}
\DeclareRobustCommand{\sdnukeyw}[2]{
	\renewcommand{\sdnukeywchs}{#1}
	\renewcommand{\sdnukeywen}{#2}
}

\DeclareRobustCommand{\wordcount}{}
\DeclareRobustCommand{\sdnuwdnum}[1]{
	\renewcommand{\wordcount}{#1}
}

\DeclareRobustCommand{\selectdate}{}
\DeclareRobustCommand{\finishdate}{}
\DeclareRobustCommand{\sdnupaperinfo}[2]{
	\renewcommand{\selectdate}{#1}
	\renewcommand{\finishdate}{#2}
}

\DeclareRobustCommand{\means}{}
\DeclareRobustCommand{\inovations}{}
\DeclareRobustCommand{\sdnupaperov}[2]{
	\renewcommand{\means}{#1}
	\renewcommand{\inovations}{#2}
}

\DeclareRobustCommand{\tableyear}{}
\DeclareRobustCommand{\tablemon}{}
\DeclareRobustCommand{\tableday}{}
\DeclareRobustCommand{\sdnutabledate}[3]{
	\renewcommand{\tableyear}{#1}
	\renewcommand{\tablemon}{#2}
	\renewcommand{\tableday}{#3}
}

\DeclareRobustCommand{\abstractchs}{}
\DeclareRobustCommand{\abstracten}{}
\DeclareRobustCommand{\abstract}[2]{
	\renewcommand{\abstractchs}{#1}
	\renewcommand{\abstracten}{#2}
}

\DeclareRobustCommand{\guidancechs}{}
\DeclareRobustCommand{\guidancegrade}{}
\DeclareRobustCommand{\guidancey}{}
\DeclareRobustCommand{\guidancem}{}
\DeclareRobustCommand{\guidanced}{}
\DeclareRobustCommand{\guidance}[5]{
	\renewcommand{\guidancechs}{#1}
	\renewcommand{\guidancegrade}{#2}
	\renewcommand{\guidancey}{#3}
	\renewcommand{\guidancem}{#4}
	\renewcommand{\guidanced}{#5}
}

\DeclareRobustCommand{\reviewerpchs}{}
\DeclareRobustCommand{\reviewerpgrade}{}
\DeclareRobustCommand{\reviewerpy}{}
\DeclareRobustCommand{\reviewerpm}{}
\DeclareRobustCommand{\reviewerpd}{}
\DeclareRobustCommand{\reviewerp}[5]{
	\renewcommand{\reviewerpchs}{#1}
	\renewcommand{\reviewerpgrade}{#2}
	\renewcommand{\reviewerpy}{#3}
	\renewcommand{\reviewerpm}{#4}
	\renewcommand{\reviewerpd}{#5}
}

\DeclareRobustCommand{\replychs}{}
\DeclareRobustCommand{\replygrade}{}
\DeclareRobustCommand{\replyy}{}
\DeclareRobustCommand{\replym}{}
\DeclareRobustCommand{\replyd}{}
\DeclareRobustCommand{\reply}[5]{
	\renewcommand{\replychs}{#1}
	\renewcommand{\replygrade}{#2}
	\renewcommand{\replyy}{#3}
	\renewcommand{\replym}{#4}
	\renewcommand{\replyd}{#5}
}

\DeclareRobustCommand{\xuefengrade}{}
\DeclareRobustCommand{\xuefeny}{}
\DeclareRobustCommand{\xuefenm}{}
\DeclareRobustCommand{\xuefend}{}
\DeclareRobustCommand{\xuefen}[4]{
	\renewcommand{\xuefengrade}{#1}
	\renewcommand{\xuefeny}{#2}
	\renewcommand{\xuefenm}{#3}
	\renewcommand{\xuefend}{#4}
}

\DeclareRobustCommand{\resdnucollegechs}{}
\DeclareRobustCommand{\resdnumajorchs}{}
\DeclareRobustCommand{\resdnuclasschs}{}
\DeclareRobustCommand{\resdnuinfo}[3]{
	\renewcommand{\resdnucollegechs}{#1}
	\renewcommand{\resdnumajorchs}{#2}
	\renewcommand{\resdnuclasschs}{#3}
}

\DeclareRobustCommand{\cabstchs}{}
\DeclareRobustCommand{\cabstgrade}{}
\DeclareRobustCommand{\cabsty}{}
\DeclareRobustCommand{\cabstm}{}
\DeclareRobustCommand{\cabstd}{}
\DeclareRobustCommand{\cabst}[5]{
	\renewcommand{\cabstchs}{#1}
	\renewcommand{\cabstgrade}{#2}
	\renewcommand{\cabsty}{#3}
	\renewcommand{\cabstm}{#4}
	\renewcommand{\cabstd}{#5}
}

%%
%% End of file `sdnubachelor.cls'.
