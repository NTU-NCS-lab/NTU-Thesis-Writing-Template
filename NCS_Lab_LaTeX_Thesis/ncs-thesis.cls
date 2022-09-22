% --------------------------------------------------
% 國立臺灣大學電機工程學系網狀控制實驗室模板 - IEEE conference
% National Taiwan University (NTU) 
% Department of Electrical Engineering
% Thesis Template for IEEE conference
% --------------------------------------------------
% Version       : 1.0
% Author        : 朱雁丞 <r10921008@g.ntu.edu.tw>
% Repository    : https://github.com/NTU-NCS-lab/ThesisWritingTemplate
% Document      : https://github.com/NTU-NCS-lab/ThesisWritingTemplate
% Last Updated  : 2022.08.14

% Please use xelatex as the compiler
% Run `biber main` before compiling
% see this to setup for vscode: https://tex.stackexchange.com/questions/598105/citation-xxx-on-pg-xx-undefined-on-input-line-xx-empty-bibliography-on-in

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ncs-thesis}[2022/08/14 v1.0 NTU NCS lab Thesis Template]

%% Redefine colors
\ifdefined\useNCSStyle
    \newcommand{\ncs@citecolor}{red}
    \newcommand{\ncs@titlecolor}{blue}
\else
    \newcommand{\ncs@citecolor}{black}
    \newcommand{\ncs@titlecolor}{black}
\fi

\newcommand{\ncscolor}[2]{
    \ifdefined\useNCSStyle
        {\color{#1}{#2}}
    \else
        {#2}
    \fi
}
\newcommand{\ncsred}[1]{
  \ncscolor{\ncs@citecolor}{#1}
}
\newcommand{\ncsblue}[1]{
    \ncscolor{\ncs@titlecolor}{#1}
}

%\let\oldcite\cite
%\renewcommand{\cite}[1]{\color{\ncs@citecolor}{\oldcite{#1}}}

\LoadClass[
    twoside,
    openright,
    degree    = master,               % degree = master | doctor
    language  = english,              % language = chinese | english
    fontset   = template,             % fontset = default | template | system | overleaf
    watermark = true,                 % watermark = true | false
    doi       = true,                 % doi = true | false
]{ntuthesis}

\RequirePackage{xparse}
\RequirePackage{amsmath,amsfonts}
\RequirePackage{algorithmic}
\RequirePackage{algorithm}
\RequirePackage{array}
\RequirePackage{textcomp}
\RequirePackage{stfloats}
\RequirePackage{url}
\RequirePackage{verbatim}
\RequirePackage{graphicx}
\RequirePackage{svg}
\RequirePackage{xcolor} 
%\RequirePackage{sectsty} 

%== use and define color ==%
\ifdefined\useNCSStyle
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=../src/ncs-citation,
    indexing=true,
    bibstyle=../src/ncs-bbx,
    ]{biblatex}

    % Change the section color
    %\renewcommand\thesection{\color{blue}{\Roman{section}}}
    %\chapterfont{\color{\ncs@titlecolor}}  % sets colour of chapters
    % \sectionfont{\color{\ncs@titlecolor}}  % sets colour of sections
    % \subsectionfont{\color{\ncs@titlecolor}}  % sets colour of sections
    % \subsubsectionfont{\color{\ncs@titlecolor}}  % sets colour of sections

    \DeclareCaptionFont{capblue}{\color{blue}}
    \captionsetup{font={capblue, bf}}
\else
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=ieee,
    indexing=true,
    bibstyle=ieee,
    ]{biblatex}
\fi
\addbibresource{./back/references.bib}