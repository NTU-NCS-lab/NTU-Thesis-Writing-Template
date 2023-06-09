% --------------------------------------------------
% 國立臺灣大學電機工程學系網狀控制實驗室模板 - IEEE conference
% National Taiwan University (NTU) 
% Department of Electrical Engineering
% Thesis Template for Thesis
% --------------------------------------------------
% Version       : 1.1
% Author        : 朱雁丞 <r10921008@g.ntu.edu.tw>
% Repository    : https://github.com/NTU-NCS-lab/ThesisWritingTemplate
% Document      : https://github.com/NTU-NCS-lab/ThesisWritingTemplate
% Last Updated  : 2023.04.19

% Please use xelatex as the compiler
% Run `biber main` before compiling
% see this to setup for vscode: https://tex.stackexchange.com/questions/598105/citation-xxx-on-pg-xx-undefined-on-input-line-xx-empty-bibliography-on-in

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ncs-thesis}[2022/08/14 v1.0 NTU NCS lab Thesis Template]

\LoadClass[
    twoside,
    openright,
    degree    = master,               % degree = master | doctor
    language  = english,              % language = chinese | english
    fontset   = template,             % fontset = default | template | system | overleaf
    watermark = true,                 % watermark = true | false
    doi       = true,                 % doi = true | false
    doctype   = draft,                % doctype = draft | final
]{ntuthesis}

\RequirePackage{amsmath,amsfonts}
% \RequirePackage{algorithmic}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{array}
\RequirePackage{textcomp}
\RequirePackage{stfloats}
\RequirePackage{url}
\RequirePackage{verbatim}
\RequirePackage{svg}
\RequirePackage{makecell}       % Make cell in table 
\RequirePackage{threeparttable} % To use footnote in a table
\RequirePackage{lscape}     % For figures or tables in landscape
%\RequirePackage{sectsty} 

\input{../src/ncs-style.cls}

%== use and define color ==%
\ifdefined\useNCSStyle
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=../src/ncs-citation,
    indexing=true,
    bibstyle=../src/ncs-bbx,
    ]{biblatex}

    \DeclareCaptionFont{capblue}{\color{blue}}
    \captionsetup{font={capblue, bf}}
    \newcommand{\todomark}[1]{{\color{\ncs@todocolor}{TODO: #1}}}
    \newenvironment{tempsection}{\color{\ncs@tempcolor}}{}

    % Adding prefix for equation
    \let\oldeqref\eqref
    \renewcommand{\eqref}[1]{{\color{\ncs@eqrefcolor}Equation \oldeqref{#1}}}

    % Adding prefix for section
    \newcommand{\secref}[1]{{\color{\ncs@eqrefcolor}Section \ref{#1}}}
\else
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=ieee,
    indexing=true,
    bibstyle=ieee,
    ]{biblatex}
\fi
