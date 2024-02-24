% --------------------------------------------------
% 國立臺灣大學電機工程學系網狀控制實驗室模板 - IEEE conference
% National Taiwan University (NTU) 
% Department of Electrical Engineering
% Thesis Template for IEEE conference
% --------------------------------------------------
% Version       : 1.1
% Author        : 朱雁丞 <r10921008@g.ntu.edu.tw>
% Repository    : https://github.com/NTU-NCS-lab/ThesisWritingTemplate
% Document      : https://github.com/NTU-NCS-lab/ThesisWritingTemplate
% Last Updated  : 2023.01.16

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

\input{./NCS-Thesis-Style/ncs-style.cls}

%== use and define color ==%
\ifdefined\useNCSStyle
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=./NCS-Thesis-Style/ncs-citation,
    indexing=true,
    bibstyle=./NCS-Thesis-Style/ncs-bbx,
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

% To make the reference font size smaller
\AtBeginBibliography{\footnotesize}

% Clear useless fields to avoid being displayed in the bibliography
\AtEveryBibitem{%
  \clearfield{note}%
  \clearfield{url}%
  \clearfield{urldate}%
  \clearfield{urlyear}%
}

\addbibresource{./back/references.bib}