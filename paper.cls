\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{paper}

\LoadClass[letterpaper,twocolumn,10pt]{article}

\frenchspacing

\RequirePackage{usenix-2020-09}

\bibliographystyle{abbrv}

\RequirePackage{xspace}
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{authblk}
\RequirePackage[framemethod=tikz]{mdframed}
\mdfdefinestyle{protocol}{,,roundcorner=10pt,}
\RequirePackage{algorithm}
\RequirePackage[noend]{algpseudocode}
\RequirePackage{braket}
\RequirePackage{tikz}

\hypersetup{linkcolor=blue}

\def\Snospace~{\S{}}
% Autoref
\def\chapterautorefname{Chapter}
\def\sectionautorefname{\Snospace}
\def\subsectionautorefname{\Snospace}
\def\subsubsectionautorefname{\Snospace}
\def\appendixautorefname{Appendix}
\def\thmautorefname{Theorem}
\def\lemautorefname{Lemma}
\def\defnautorefname{Definition}
\def\algorithmautorefname{Algorithm}

\algnewcommand\algorithmicswitch{\textbf{switch}}
\algnewcommand\algorithmiccase{\textbf{case}}
\algdef{SE}[SWITCH]{Switch}{EndSwitch}[1]{\algorithmicswitch\ #1\ \algorithmicdo}{\algorithmicend\ \algorithmicswitch}
\algdef{SE}[CASE]{Case}{EndCase}[1]{\algorithmiccase\ #1}{\algorithmicend\ \algorithmiccase}
\algtext*{EndSwitch}
\algtext*{EndCase}

\usetikzlibrary{shapes.geometric, arrows, matrix}

\IfFileExists{macros.tex}{\input{macros}}{}
