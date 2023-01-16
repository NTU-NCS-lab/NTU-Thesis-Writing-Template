% --------------------------------------------------
% 國立臺灣大學電機工程學系網狀控制實驗室模板
% National Taiwan University (NTU) 
% Department of Electrical Engineering
% NCS Styles Definitions
% --------------------------------------------------
% Version       : 1.1
% Author        : 朱雁丞 <r10921008@g.ntu.edu.tw>
% Repository    : https://github.com/NTU-NCS-lab/ThesisWritingTemplate
% Document      : https://github.com/NTU-NCS-lab/ThesisWritingTemplate
% Last Updated  : 2023.01.16

%% Redefine colors
\ifdefined\useNCSStyle
    \newcommand{\ncs@citecolor}{red}
    \newcommand{\ncs@titlecolor}{blue}
    \newcommand{\ncs@eqrefcolor}{blue}
\fi

\ifdefined\useNCSStyle
    \newcommand{\ncscolor}[2]{
        \ifdefined\useNCSStyle
            {\color{#1}{#2}}
        \else
            {#2}
        \fi
    }
    \newcommand{\ncsred}[1]{\ncscolor{\ncs@citecolor}{#1}}
    \newcommand{\ncsblue}[1]{\ncscolor{\ncs@titlecolor}{#1}}
    
    \let\oldtitle\title
    \renewcommand{\title}[1]{{\color{\ncs@titlecolor}\oldtitle{#1}}}
    
    % Solution from https://stackoverflow.com/questions/38263980/how-can-i-redefine-a-starred-latex-command-that-take-parameters
    \let\oldsection\section
    \newcommand{\@sectionstar}[1]{{\color{\ncs@titlecolor}\oldsection*{#1}}}
    \newcommand{\@sectionnostar}[1]{{\color{\ncs@titlecolor}\oldsection{#1}}}
    \renewcommand{\section}{\@ifstar{\@sectionstar}{\@sectionnostar}}
    
    \let\oldsubsection\subsection
    \newcommand{\@subsectionstar}[1]{{\color{\ncs@titlecolor}\oldsubsection*{#1}}}
    \newcommand{\@subsectionnostar}[1]{{\color{\ncs@titlecolor}\oldsubsection{#1}}}
    \renewcommand{\subsection}{\@ifstar{\@subsectionstar}{\@subsectionnostar}}
    
    \let\oldsubsubsection\subsubsection
    \renewcommand{\subsubsection}[1]{{\color{\ncs@titlecolor}\oldsubsubsection{#1}}}
    
    \let\oldeqref\eqref
    \renewcommand{\eqref}[1]{{\color{\ncs@eqrefcolor}\oldeqref{#1}}}
\fi