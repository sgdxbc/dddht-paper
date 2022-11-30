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

\IfFileExists{macros.tex}{\input{macros}}{}
