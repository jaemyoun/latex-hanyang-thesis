% Hanyang University PhD thesis style
%
% NOTE. This is unofficial so you should always double check against the
% Registrar's office rules
%
% Original version is Stanford University PhD thesis style
% Modified by Jaemyoun Lee 21/Oct/2016
%   modified for Hanyang University Thesis style

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hanyang-thesis}[2016/10/21 v0.1 Hanyang University Thesis Class]
\LoadClass[10pt, oneside, letterpaper]{book}

% for doubles pacing
\RequirePackage{setspace}
\setstretch{1.6}

% for lowercase to uppercase i.e. {\sc All} -> ALL
\RequirePackage[small, md, sc]{titlesec}

% for chapter
\RequirePackage[palatino]{quotchap}
\definecolor{chaptergrey}{rgb}{0.6,0,0}
\let\defaultchapter\chapter
\def\chapter{\@ifstar{\defaultchapter*}{\nochapter}}
\newcommand{\nochapter}[1]{\setstretch{1}\defaultchapter{#1}\setstretch{2.0}}

% for font style
\RequirePackage{xltxtra,xunicode}
\RequirePackage{noto}

% for Korean
\RequirePackage{xeCJK}
\xeCJKsetup{CJKspace=true,CJKecglue={}}% ref. https://gist.github.com/dlimpid/5454229
\setCJKmainfont[Ligatures=TeX,BoldFont={NanumMyeongjoExtraBold.otf},AutoFakeSlant]{NanumMyeongjo.otf}
\setCJKsansfont[Ligatures=TeX,BoldFont={NanumMyeongjoExtraBold.otf},AutoFakeSlant]{NanumMyeongjo.otf}
\setCJKmonofont[Ligatures=TeX,BoldFont={NanumMyeongjoExtraBold.otf},AutoFakeSlant]{NanumMyeongjo.otf}

% for insertion of 'contents', 'list of tables/figures', and 'bibliography' into TOC
\RequirePackage{tocbibind}

% Quoation
\RequirePackage[palatino]{quotchap}

% Disallow page breaks at hyphens (this will give some underfull vbox's, so an alternative is to use \brokenpenalty=100 and manually search for and fix such page breaks)
\brokenpenalty=100 % ref. Stanford PhD Thesis Class

% Define hyphenation to break word by hyphen
\hyphenation{val-id-ated}
\hyphenation{pro-viders}
\hyphenation{dis-trib-ut-ed}

%%%%%
%%%%%   SETUP MARGINS
%%%%%

\RequirePackage[b5j, top=32mm, bottom=32mm, left=22.5mm, right=22.5mm]{geometry}
% \RequirePackage[showframe, b5j, top=29.5mm, bottom=29.5mm, left=20mm, right=20mm]{geometry}
% \RequirePackage[a4paper, top=53mm, bottom=53mm, left=35mm, right=35mm]{geometry}
% \RequirePackage[showframe, a4paper, top=53mm, bottom=53mm, left=35mm, right=35mm]{geometry}


%%%%%
%%%%%   SETUP COMMANDS PECULIAR TO THESES
%%%%%

\def\dept#1{\gdef\@dept{#1}}

\def\principaladviser#1{\gdef\@principaladviser{#1}}
\def\firstreader#1{\gdef\@firstreader{#1}}
\def\secondreader#1{\gdef\@secondreader{#1}}
\def\thirdreader#1{\gdef\@thirdreader{#1}}
\def\fourthreader#1{\gdef\@fourthreader{#1}}
\def\fifthreader#1{\gdef\@fifthreader{#1}}

\def\submitdate#1{\gdef\@submitdate{#1}}
\def\@submitdate{\ifcase\the\month\or January\or February\or March\or April\or May\or June\or July\or August\or September\or October\or November\or December\fi \space \number\the\year}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\@copyrightyear{\number\the\year}

%%%%%
%%%%%   PREFACE FORMS
%%%%%

%% The front and end space would be decrease approximately 5mm for according to Hanyang Thesis.

\newfontfamily\setFontToArnoPro[Path = fonts/,
    Extension = .otf,
    Mapping=tex-text, 
    Ligatures={Common}, 
    SizeFeatures={%
        {Size={-12},Font=*-Regular, Ligatures=Rare, Contextuals={Swash,Alternate}},
    	{Size={12-50}, Font=*-BoldSubhead, Ligatures=Rare, Contextuals={Swash,Alternate}}},
    BoldFont=ArnoPro-Bold
    ]{ArnoPro} %

\newfontfamily\setFontToArnoProRuglar[Path = fonts/,
    Extension = .otf,
    Mapping=tex-text, 
    Ligatures={Common}, 
    SizeFeatures={%
        {Size={-50},Font=*-Regular, Ligatures=Rare, Contextuals={Swash,Alternate}}}
    ]{ArnoPro} %
\renewcommand*{\sectfont}{\setFontToArnoProRuglar}
    
\def\titlep{
    \thispagestyle{empty}
    \begin{center}
        \null 
        \setFontToArnoPro % change a font style
        % \vspace{17.5mm}  \LARGE\uppercase{Thesis For The Degree of Doctor of Philosophy} \\
        \vspace{20mm}  \LARGE\uppercase{Thesis For The Degree of Doctor of Philosophy} \\
        \vspace{30mm}  \huge\expandafter{\@title} \\
        \vspace{\fill} \LARGE{\@author} \\
        \vspace{35mm}  \LARGE{Graduate School of Hanyang University} \\
        \vspace{25mm}  \LARGE{\@submitdate} \\
        % \vspace{12.5mm}  \null
        \vspace{15mm}  \null
    \end{center}
    \newpage}


\def\submitpage{
    \thispagestyle{empty}
    \begin{center}
        \null
        \setFontToArnoPro % change a font style
        % \vspace{12.5mm}  \LARGE\uppercase{Thesis For The Degree of Doctor of Philosophy} \\
        \vspace{15mm}  \LARGE\uppercase{Thesis For The Degree of Doctor of Philosophy} \\
        \vspace{20mm}  \huge{\@title} \\
        \vspace{\fill} \LARGE{Thesis Supervisor: \@principaladviser} \\
        \vspace{15mm}  \hspace{15mm} \LARGE{A Thesis submitted to the graduate school of \\ Hanyang University in partial fulfillment of the requirements \\ for the degree of Doctor of Philosophy} \\
        \vspace{30mm}  \LARGE{\@author} \\
        \vspace{10mm}  \LARGE{\@submitdate} \\
        \vspace{10mm}  \LARGE{Department of \@dept} \\
        \vspace{\z@}   \LARGE{Graduate School of Hanyang University}
        % \vspace{7.5mm}  \null
        \vspace{10mm}  \null
    \end{center}
    \newpage}

    
\newfontfamily\fontToArnoProDisplay[Path = fonts/,
    Extension = .otf, Mapping=tex-text, 
    Ligatures={Common}, 
    LetterSpace=-4,
    SizeFeatures={{Size={-50},Font=*-RegularDisplay, Ligatures=Rare, Contextuals={Swash,Alternate}}},
    BoldFont=ArnoPro-BoldDisplay
]{ArnoPro}

\def\approvalpage{
    \thispagestyle{empty}
    \begin{center}
        \null
        \setFontToArnoPro % change a font style
        % \vspace{22.5mm}  \LARGE{This thesis, written by \@author, \\ has been approved as a thesis for the Doctor of Philosophy.} \\
        \vspace{25mm}  \LARGE{This thesis, written by \@author, \\ has been approved as a thesis for the Doctor of Philosophy.} \\
        \vspace{30mm}  \LARGE{\@submitdate} \\
        \vspace{25mm}
        \begin{tabular}{lr}
            \fontToArnoProDisplay{\textbf{\LARGE{Committee Chairman:}}} & \LARGE{\underline{\makebox[45mm][r]{\@firstreader}} \hspace{3mm}\fontToArnoProDisplay{(Signature)}} \\ \\
            \fontToArnoProDisplay{\textbf{\LARGE{Committee Member:}}} & \LARGE{\underline{\makebox[45mm][r]{\@secondreader}} \hspace{3mm}\fontToArnoProDisplay{(Signature)}} \\ \\
            \fontToArnoProDisplay{\textbf{\LARGE{Committee Member:}}} & \LARGE{\underline{\makebox[45mm][r]{\@thirdreader}} \hspace{3mm}\fontToArnoProDisplay{(Signature)}} \\ \\
            \fontToArnoProDisplay{\textbf{\LARGE{Committee Member:}}} & \LARGE{\underline{\makebox[45mm][r]{\@fourthreader}} \hspace{3mm}\fontToArnoProDisplay{(Signature)}} \\ \\
            \fontToArnoProDisplay{\textbf{\LARGE{Committee Member:}}} & \LARGE{\underline{\makebox[45mm][r]{\@fifthreader}} \hspace{3mm}\fontToArnoProDisplay{(Signature)}} \\
		\end{tabular} \\
		\vspace{\fill} \LARGE{Graduate School of Hanyang University} \\
% 		\vspace{17.5mm}  \null
		\vspace{20mm}  \null
    \end{center}
    \newpage}

\def\copyrightpage{
    \newpage 
    \thispagestyle{empty} 
    \setFontToArnoPro % change a font style
    \vspace*{\fill}
    \noindent \copyright~\textit{\@copyrightyear~\textendash\hspace{3pt}~\textbf{\@author}} \\
    \noindent \textsc{All rights reserved.} \\
    \vspace*{\fill} 
    \newpage}

\def\abstractpage{
    \chapter*{Abstract}
    \begin{center}
        \large{\@title}
    \end{center}
    \vspace{1mm}
    \begin{flushright}
        \@author \\
        Department of \@dept \\
        The Graduate School \\
        Hanyang University \\
    \end{flushright}
    \addcontentsline{toc}{chapter}{Abstract}
    \input{chapter/abstracteng}
    \vspace*{\fill}\newpage}

\def\beforepreface{
        \pagestyle{plain}
        \newgeometry{top=0mm, bottom=0mm, left=0mm, right=0mm} % To change the margin
        % \newgeometry{showframe, top=21mm, bottom=21mm, left=12.5mm, right=12.5mm} % To change the margin
        \setstretch{1}
            \titlep
            \submitpage
            \approvalpage
        \restoregeometry % To restore the margin
        \copyrightpage
        \rm % change a font style
        \pagenumbering{roman}
            \setstretch{1.6}
            \tableofcontents\newpage
            % \addcontentsline{toc}{chapter}{\listtablename}
            \listoftables\newpage
            % \addcontentsline{toc}{chapter}{\listfigurename}
            \listoffigures\newpage
            \setstretch{1.3}
            \abstractpage\newpage
        \pagenumbering{arabic}
        }
    
\def\abstractpagekor{
    \chapter*{국문요지}
    \addcontentsline{toc}{chapter}{\textbf{국문요지}}
	\input{chapter/abstractkor}
    \vspace*{\fill}\newpage}
    
\def\acknowledgments{
    \chapter*{Acknowledgments}
    \addcontentsline{toc}{chapter}{Acknowledgments}
	\input{chapter/acknowledgments}
    \vspace*{\fill}\newpage}
        
\def\afterpreface{
        \abstractpagekor\newpage
        \acknowledgments\newpage
        }
        
% Redefine \thebibliography to go to a new page and put an entry in the
% table of contents
\renewcommand\bibname{References}
\let\@ldthebibliography\thebibliography

\renewcommand{\thebibliography}[1]{
    \newpage    
    \@ldthebibliography{#1}}%

% redefine \@endpart so the blank page after part has a page number
\def\@endpart{
    \vfil\newpage
    \if@twoside
    \if@openright
        \null
        \thispagestyle{plain}%
        \newpage
    \fi
    \fi
    \if@tempswa
        \twocolumn
    \fi}

% Start out normal
\pagestyle{headings}
