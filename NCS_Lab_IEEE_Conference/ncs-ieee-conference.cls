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
% Last Updated  : 2022.08.13

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ncs-ieee-conference}[2022/08/13 v1.0 NTU NCS lab Thesis Template]

%\LoadClass[lettersize,journal]{IEEEtran}
\LoadClass[conference]{IEEEtran}

\RequirePackage{xparse}
\RequirePackage{amsmath,amsfonts}
\RequirePackage{algorithmic}
\RequirePackage{algorithm}
\RequirePackage{array}
\RequirePackage[caption=false,font=normalsize,labelfont=sf,textfont=sf]{subfig}
\RequirePackage{textcomp}
\RequirePackage{stfloats}
\RequirePackage{url}
\RequirePackage{verbatim}
\RequirePackage{graphicx}
\RequirePackage{svg}
\RequirePackage{xcolor} 
\RequirePackage{hyperref}

%To use Chinese words
\RequirePackage{CJKutf8}

%== Set image path ==%
\graphicspath{{./imgs/}}


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

\let\oldtitle\title
\renewcommand{\title}[1]{
    {\color{\ncs@titlecolor}{\oldtitle{#1}}}
}

\let\oldsection\section
\renewcommand{\section}[1]{
    {\color{\ncs@titlecolor}{\oldsection{#1}}}
}

\let\oldsubsection\subsection
\renewcommand{\subsection}[1]{
    {\color{\ncs@titlecolor}{\oldsubsection{#1}}}
}

\let\oldsubsubsection\subsubsection
\renewcommand{\subsubsection}[1]{
    {\color{\ncs@titlecolor}{\oldsubsubsection{#1}}}
}

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
    \renewcommand\thesection{\color{blue}{\Roman{section}}}
    
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
\addbibresource{ref.bib}