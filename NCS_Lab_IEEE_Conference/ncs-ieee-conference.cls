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

% Comment this line to use the default IEEE style
\def\useNCSStyle{1}

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

%To use Chinese words
\RequirePackage{CJKutf8}

%== Set image path ==%
\graphicspath{{./imgs/}}

%== use and define color ==%
\if\useNCSStyle1
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=./settings/ncs-citation,
    indexing=true,
    bibstyle=./settings/ncs-bbx,
    ]{biblatex}
    \addbibresource{ref.bib}

    % Change the section color
    \renewcommand\thesection{\color{blue}{\Roman{section}}}
\else
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=ieee,
    indexing=true,
    bibstyle=ieee,
    ]{biblatex}
    \addbibresource{ref.bib}
\fi