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

% region [options setup]
% Declare options
\RequirePackage{xkeyval}
\RequirePackage{iftex}
\RequirePackage{ifthen}
\DeclareOptionX{ncsstyle}{\newcommand{\ncs@ncsstyle}[0]{#1}}
\DeclareOptionX{watermark}{\newcommand{\ncs@watermark}[0]{#1}}
\DeclareOptionX{doi}{\newcommand{\ncs@doi}[0]{#1}}
\DeclareOptionX{doctype}{\newcommand{\ncs@doctype}[0]{#1}}
\DeclareOptionX{print}{\newcommand{\ncs@print}[0]{#1}}
\ProcessOptionsX

% The print mode disables 
% 1) \todomark{} command
% 2) the tempsection environment, please check all tempsections before printing
% 3) colors, redefining all caption colors to black, except for citations and equations

\ifthenelse{\equal{\ncs@ncsstyle}{true}}
{\def\useNCSStyle{1}}
{}
% endregion [options setup]

% region [load packages]
% Load parant class
\LoadClass[twoside,
    openright,
    degree    = master,               % degree = master | doctor
    language  = english,              % language = chinese | english
    fontset   = template,             % fontset = default | template | system | overleaf
    watermark = \ncs@watermark,       % watermark = true | false
    doi       = \ncs@doi,             % doi = true | false
    doctype   = \ncs@doctype,         % doctype = draft | final
    print     = \ncs@print,           % print = false | true, switch colors to black
]{ntuthesis}

\RequirePackage{amsmath, amsthm,amsfonts}
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
\RequirePackage{thmtools}
%\RequirePackage{sectsty} 
% endregion [load packages]

\input{../src/ncs-style.cls}
    
% region [define useful commands]
% Useful commands
\newcommand{\todomark}[1]{%
    \ifthenelse{\equal{\ntu@print}{true}}
    {\color{\ncs@todocolor}{TODO: #1}}{}}

\newenvironment{tempsection}
{\color{\ncs@tempcolor}}
{}

% Adding prefix for equation
\let\oldeqref\eqref
\renewcommand{\eqref}[1]{{\color{\ncs@eqrefcolor}Equation \oldeqref{#1}}}


% Adding prefix for sections, figures and tables
\newcommand{\coloredref}[2]{{\color{\ncs@eqrefcolor}#1 \ref{#2}}}
\newcommand{\secref}[1]{\coloredref{Section}{#1}}
\newcommand{\figref}[1]{\coloredref{Figure}{#1}}
\newcommand{\tbref}[1]{\coloredref{Table}{#1}}


% Theorems  
\declaretheoremstyle[
    headfont=\color{\ncs@titlecolor}\normalfont\bfseries,
]{colored}

\declaretheorem[style=colored, name=Assumption]{assumption}
\declaretheorem[style=colored, name=Theorem]{theorem}
\declaretheorem[style=colored, name=Lemma]{lemma}
\declaretheorem[style=colored, name=Remark]{remark}
\declaretheorem[style=colored, name=Proposition]{proposition}
\declaretheorem[style=colored, name=Definition]{definition}
% endregion [define useful commands]

%== use and define color ==%
\ifdefined\useNCSStyle
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=../src/ncs-citation,
    indexing=true,
    bibstyle=../src/ncs-bbx,
    ]{biblatex}

    
    \ifthenelse{\equal{\ntu@print}{true}}{%
        \renewcommand{\ncs@todocolor}{black}
        \renewcommand{\ncs@titlecolor}{black}
        \renewcommand{\ncs@tempcolor}{black}}
    {}


    \DeclareCaptionFont{capblue}{\color{\ncs@titlecolor}}
    \captionsetup{font={small, capblue, bf}}
\else
    \usepackage[
    backend=biber,
    hyperref=true,
    citestyle=ieee,
    indexing=true,
    bibstyle=ieee,
    ]{biblatex}
\fi
