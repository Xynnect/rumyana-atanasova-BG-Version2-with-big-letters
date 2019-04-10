%% Start of file `awesome-cv.cls'.
% Awesome CV Class File
%
% This class has been downloaded from:
% https://github.com/posquit0/Awesome-CV
%
% Author:
% Claud D. Park <posquit0.bj@gmail.com>
% http://www.posquit0.com
%
% Notes:
% 1) This class file defines the structure and layout of the template file (cv.tex, resume.tex).
% 2) It has been written in such a way that under most circumstances you
% should not need to edit it.
%
% Class license:
% LPPL v1.3c (http://www.latex-project.org/lppl)
%

\usepackage{fontspec}
% \setromanfont{Times New Roman}
% \setsansfont{Arial}
% \setmonofont[Color={0019D4}]{Courier New}

% \usepackage[utf8]{inputenc}
% \usepackage[bulgarian, english]{babel}

% \usepackage{fontspec}
% \setmainfont{Arial}
% \setsansfont{Arial}
% \newfontfamily\greekfont[Script=bulgarian]{Linux Libertine O}
% \newfontfamily\greekfontsf[Script=bulgarian]{Linux Libertine O}
% \usepackage{polyglossia}
% \setdefaultlanguage{bulgarian}

% \setmainfont{Linux Biolinum O}
% \setsansfont{Linux Biolinum O}
% \setmonofont[Scale=MatchLowercase]{DejaVu Sans Mono}

\usepackage{xstring}


%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\ProvidesClass{awesome-cv}[2015/12/14 v1.3 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}


%-------------------------------------------------------------------------------
%                Class options
%
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)
%-------------------------------------------------------------------------------
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage[a4paper]{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% Needed to manage fonts
\ifxetex
  \RequirePackage[quiet]{fontspec}
  % To support LaTeX quoting style
  \defaultfontfeatures{Ligatures=TeX}
\else
  \RequirePackage[T1]{fontenc}
  % Replace by the encoding you are using
  \RequirePackage[utf8]{inputenc}
\fi
% Needed to manage math fonts
% \RequirePackage{unicode-math}
% \RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
% Needed to use icons from font-awesome
% (https://github.com/posquit0/latex-fontawesome)
\RequirePackage{fontawesome}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage{hyperref}
\hypersetup{
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={},
  colorlinks=false,
  allbordercolors=white
}
%\RequirePackage{boolexpr}
%\RequirePackage{expl3}
% NOTE : Keep the 3 spaces below, otherwise it induces errors.



%-------------------------------------------------------------------------------
%                Configuration for directory locations
%-------------------------------------------------------------------------------
% Configure a directory location for fonts(default: 'fonts/')
% \newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
% \fontdir


    %-------------------------------------------------------------------------------
    %                Configuration for layout
    %-------------------------------------------------------------------------------
    %% Page Layout
    % Configure page margins with geometry
    %\geometry{letterpaper}
    \geometry{left=1.5cm, top=1.0cm, right=1.5cm, bottom=0.0cm, footskip=0.0cm}
    
    %% Header & Footer
    % Set offset to each header and offset
    \fancyhfoffset{0em}
    % Remove head rule
    \renewcommand{\headrulewidth}{0pt}
    % Clear all header & footer fields
    \fancyhf{}
    % Enable if you want to make header or footer using fancyhdr
    \pagestyle{fancy}


%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\definecolor{darktext}{HTML}{414141}
\colorlet{text}{darkgray}
\colorlet{graytext}{gray}
\colorlet{lighttext}{lightgray}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{000055}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
% \definecolor{darkblue1}{HTML}{95A5A6}
\colorlet{awesome}{awesome-red}
\definecolor{darkblueforurl}{HTML}{0000FF}

% \definecolor{darkgray}{HTML}{333333}
% \definecolor{darkblue1}{HTML}{414141}
% \colorlet{darkblue1}{darkblue1}
% \hypersetup{
%   colorlinks=true,
%   linkcolor=darkblue1,
% %   linkcolor=darkblue1,
% }

% Awesome section color
\newcounter{colorCounter}
\def\@sectioncolor#1#2#3{%
  {%
    \color{%
      \ifcase\value{colorCounter}%
        awesome\or%
        awesome\or%
        awesome\or%
        awesome\or%
        awesome\else%
        awesome\fi%
    } #1#2#3%
  }%
  \stepcounter{colorCounter}%
}



%-------------------------------------------------------------------------------
%                Configuration for fonts
%-------------------------------------------------------------------------------
% Set font for header (default is Roboto)

% \usepackage[utf8]{inputenc}
% \usepackage[bulgarian]{babel}
% % \usepackage[T1, T2A]{fontenc}
% \selectlanguage{bulgarian}
% \fontdir[fonts/]
% \usepackage[encoding]{inputenc}

% \newfontfamily\headerfont[
%   Path=fonts/,
%   UprightFont=*-Lig,
%   ItalicFont=*-LigIta,
%   BoldFont=*-Bol,
%   BoldItalicFont=*-LigIta,
% ]{Niveau}

% \newfontfamily\headerfontlight[
%   Path=fonts/,
%   UprightFont=*-Lig,
%   ItalicFont=*-LigIta,
%   BoldFont=*-Bol,
%   BoldItalicFont=*-LigIta,
% ]{Niveau}

% Set font for body (default is Source Sans Pro)
% \newfontfamily\bodyfont[
%   Path=\@fontdir,
%   UprightFont=*-Regular,
%   ItalicFont=*-It,
%   BoldFont=*-Bold,
%   BoldItalicFont=*-BoldIt
% ]{SourceSansPro}

% \newfontfamily\headerfontonlyname[
%   Path=\@fontdir,
%   UprightFont=*-Thin,
%   ItalicFont=*-ThinItalic,
%   BoldFont=*-Medium,
%   BoldItalicFont=*-MediumItalic,
% ]{Copperplate}

% \newfontfamily\headerfont[
%   Path=fonts/,
%   UprightFont=*-Lig,
%   ItalicFont=*-LigIta,
%   BoldFont=*-Bol,
%   BoldItalicFont=*-LigIta,
% ]{Niveau}

% \newfontfamily\headerfontlight[
%   Path=fonts/,
%   UprightFont=*-Lig,
%   ItalicFont=*-LigIta,
%   BoldFont=*-Bol,
%   BoldItalicFont=*-LigIta,
% ]{Niveau}

% Set font for footer (default is Source Sans Pro)
% \newfontfamily\footerfont[
%   Path=fonts/,
%   UprightFont=*-Lig,
%   ItalicFont=*-LigIta,
%   BoldFont=*-Bol,
%   BoldItalicFont=*-LigIta,
% ]{Niveau}

% % Set font for body (default is Source Sans Pro)
% \newfontfamily\bodyfont[
%   Path=fonts/,
%   UprightFont=*-Lig,
%   ItalicFont=*-LigIta,
%   BoldFont=*-Bol,
%   BoldItalicFont=*-LigIta,
% ]{Niveau}

% \newfontfamily\bodyfontlight[
%   Path=fonts/,
%   UprightFont=*-Lig,
%   ItalicFont=*-LigIta,
%   BoldFont=*-Bol,
%   BoldItalicFont=*-LigIta,
% ]{Niveau}

% \newfontfamily\headerfontonlyname[
%   Path=fonts/,
%   UprightFont=*-Lig,
%   ItalicFont=*-LigIta,
%   BoldFont=*-Bol,
%   BoldItalicFont=*-LigIta,
% ]{Niveau}

% Set main fonts
% \defaultfontfeatures{Mapping=tex-text}
% \setmainfont[Color=primary, Path = fonts/, Scale=1.09]{Niveau-Lig}
% \newcommand{\custombold}[1]
% {\color{subheadings}\fontspec[Path = fonts/]{Niveau-ExtraLight}\selectfont #1 \normalfont}
% \linespread{1.1}

%-------------------------------------------------------------------------------
%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements
% For fundamental structures
%Ronak added for section formating, Linux
\newcommand\textlcsc[1]{\textsc{\MakeLowercase{#1}}}

\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{24pt}{1em}\color{graytext} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{24pt}{1em}\color{text} #1}}

\newcommand*{\headerpositionstyle}[1]{{\fontsize{7.6pt}{1em}\bodyfont\scshape\color{awesome} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{7.8pt}{1em}\bodyfont\color{awesome} #1}} %graytext
\newcommand*{\headerquotestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\itshape\color{awesome} #1}} %darktest
\newcommand*{\footerstyle}[1]{{\fontsize{8pt}{1em}\footerfont\scshape\color{lighttext} #1}}
%with section color
%\newcommand*{\sectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
%without section color
\newcommand*{\sectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{awesome} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\fontsize{8pt}{1em}\bodyfont\mdseries\color{graytext} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{7pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of honor
\newcommand*{\honortitlestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorpositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\honordatestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorlocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\color{text} #1}}

% For elements of the cover letter
\newcommand*{\paragraphstyle}[1]{{\fontsize{14pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\recipientaddressstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\recipienttitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\lettertitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\bfseries\color{darktext} \underline{#1}}}
\newcommand*{\letterdatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\lettertextstyle}{\fontsize{10pt}{1.4em}\bodyfontlight\upshape\color{graytext}}
\newcommand*{\letternamestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\letterenclosurestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\slshape\color{lighttext} #1}}


%-------------------------------------------------------------------------------
%                Commands for personal information
%-------------------------------------------------------------------------------
% Define writer's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Define writer's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\def\@address{#1}}

% Define writer's position
% Usage: \name{<position>}
\newcommand*{\position}[1]{\def\@position{#1}}

% Defines writer's mobile (optional)
% Usage: \mobile{<mobile number>}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}

% Defines writer's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\def\@email{#1}}

% Defines writer's homepage (optional)
% Usage: \homepage{<url>}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}

% Defines writer's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\def\@github{#1}}

% Defines writer's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}

% Defines writer's stackoverflow profile (optional)
% Usage: \stackoverflow{<so userid>}{<so username>}
%   e.g.https://stackoverflow.com/users/123456/sam-smith
%       would be \stackoverflow{123456}{sam-smith}
\newcommand*{\stackoverflow}[2]{\def\@stackoverflowid{#1}\def\@stackoverflowname{#2}}

% Defines writer's skype (optional)
% Usage: \skype{<skype account>}
\newcommand*{\skype}[1]{\def\@skype{#1}}

% Defines writer's twitter (optional)
% Usage: \twitter{<twitter handle>}
\newcommand*{\twitter}[1]{\def\@twitter{#1}}

% Defines writer's quote (optional)
% Usage: \quote{<quote>}
\renewcommand*{\quote}[1]{\def\@quote{#1}}

% Defines recipient's information (cover letter only)
% Usage: \recipient{<recipient name>}{<recipient address>}
% Usage: \recipientname{<recipient name>}
% Usage: \recipientaddress{<recipient address>}
\newcommand*{\recipient}[2]{\def\@recipientname{#1}\def\@recipientaddress{#2}}
\newcommand*{\recipientname}[1]{\def\@recipientname{#1}}
\newcommand*{\recipientaddress}[1]{\def\@recipientaddress{#1}}

% Defines the title for letter (cover letter only, optional)
% Usage: \lettertitle{<title>}
\newcommand*{\lettertitle}[1]{\def\@lettertitle{#1}}

% Defines the date for letter (cover letter only)
% Usage: \letterdate{<date>}
\newcommand*{\letterdate}[1]{\def\@letterdate{#1}}

% Defines a message of opening for letter (cover letter only)
% Usage: \letteropening{<message>}
\newcommand*{\letteropening}[1]{\def\@letteropening{#1}}

% Defines a message of closing for letter (cover letter only)
% Usage: \letterclosing{<message>}
\newcommand*{\letterclosing}[1]{\def\@letterclosing{#1}}

% Defines an enclosure for letter (cover letter only, optional)
% Usage: \letterenclosure[<enclosure name>]{<enclosure>}
\newcommand*{\letterenclname}[1][Enclosure]{\def\@letterenclname{#1}}
\newcommand*{\letterenclosure}[2][]{
  % if an optional argument is provided, use it to redefine \enclname
  \ifthenelse{\equal{#1}{}}{}{\def\@letterenclname{#1}}
  \def\@letterenclosure{#2}
}

%-------------------------------------------------------------------------------
%                Commands for extra
%-------------------------------------------------------------------------------
% Define separator for social informations in header
% Usage: \headersocialsep{<separator>}
% Default: \quad\textbar\quad
\newcommand*{\headersocialsep}[1][\textbar]{\def\@headersocialsep{#1}}
\headersocialsep


%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific tickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}


%-------------------------------------------------------------------------------
%                Commands for elements of CV structure
%-------------------------------------------------------------------------------
% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}{
  \begin{center}
    \headerfirstnamestyle{
      \@firstname
    } \headerlastnamestyle{
      \@lastname
    }
    \\
    \vspace{0.4mm}
    \ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\}}
    \vspace{0.4mm}
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\}}
    \vspace{-0.5mm}
    \headersocialstyle{
      \newbool{isstart}
      \setbool{isstart}{true}
      \ifthenelse{\isundefined{\@mobile}}
        {}
        {
        %  THIS IS THE SIZE VARIABLE
        \faMobile\ \footnotesize \@mobile
          \setbool{isstart}{false}
        }
      \ifthenelse{\isundefined{\@email}}
        {}
        {
          \ifbool{isstart}
            {
              \setbool{istart}{false}
            }
        %  THIS IS THE SEPARATOR
            {\@headersocialsep}
          \href{mailto:\@email}{\faEnvelope\ \@email}
        }
      \ifthenelse{\isundefined{\@homepage}}
        {}
        {
          \ifbool{isstart}
            {
              \setbool{istart}{false}
            }
            {\@headersocialsep}
          \href{http://\@homepage}{\faHome\ \@homepage}
        }
      \ifthenelse{\isundefined{\@github}}
        {}
        {
          \ifbool{isstart}
            {
              \setbool{istart}{false}
            }
            {\@headersocialsep}
          \href{https://github.com/\@github}{\faGithubSquare\ \@github}
        }
      \ifthenelse{\isundefined{\@stackoverflowid}}
        {}
        {
          \ifbool{isstart}
            {
              \setbool{istart}{false}
            }
            {\@headersocialsep}
          \href{https://stackoverflow.com/users/\@stackoverflowid}{\faStackOverflow\ \@stackoverflowname}
        }
      \ifthenelse{\isundefined{\@linkedin}}
        {}
        {
          \ifbool{isstart}
            {
              \setbool{istart}{false}
            }
            {\@headersocialsep}
          \href{\@linkedin}{\faLinkedinSquare\ \@linkedin}
        }
      \ifthenelse{\isundefined{\@twitter}}
        {}
        {
          \ifbool{isstart}
            {
              \setbool{istart}{false}
            }
            {\@headersocialsep}
          \href{https://twitter.com/\@twitter}{\faTwitter\ \@twitter}
        }
      \ifthenelse{\isundefined{\@skype}}
        {}
        {
          \ifbool{isstart}
            {
              \setbool{istart}{false}
            }
            {\@headersocialsep}
          \faSkype\ \@skype
        }
    } \\
    \ifthenelse{\isundefined{\@quote}}
      {}
      {\vspace{6.0mm}\headerquotestyle{\@quote\\}\vspace{5.0mm}}
  \end{center}
}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand*{\makecvfooter}[3]{
  \fancyfoot{}
  \fancyfoot[L]{
    \footerstyle{#1}
  }
  \fancyfoot[C]{
    \footerstyle{#2}
  }
  \fancyfoot[R]{
    \footerstyle{#3}
  }
}

% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{

    \selectlanguage{bulgarian}
    \setmainfont{Linux Biolinum O}
    \setsansfont{Linux Biolinum O}
    \setmonofont[Scale=MatchLowercase]{DejaVu Sans Mono}

  \par\addvspace{-1.5ex}
  \color{gray}\vhrulefill{0.9pt}
  \phantomsection{}
    \centering
  \sectionstyle{#1}
  \color{gray}\vhrulefill{0.9pt}
  \par\nobreak\addvspace{1ex}

}

% Define a subsection for
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{
  \phantomsection{}
  \subsectionstyle{#1}
}

% Define an environment for cventry
\newenvironment{cventries}{
  \begin{center}
}{
  \end{center}
}
% Define an entry of cv information
% Usage: \cventry{<position>}{<title>}{<location>}{<date>}{<description>}
% \newcommand*{\cventry}[5]{
%   \setlength\tabcolsep{0pt}
%   \setlength{\extrarowheight}{0pt}
%   \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{12.5cm} R{4.5cm}}
%     \ifempty{#2#3}
%       {\entrypositionstyle{#1} & \entrydatestyle{#4} \\}
%       {\entrytitlestyle{#2} & \entrylocationstyle{#3} \\
%       \entrypositionstyle{#1} & \entrydatestyle{#4} \\}
%     \multicolumn{2}{L{17cm}}{\descriptionstyle{#5}} \\
%   \end{tabular*}
% }

%Ronak - new cventry with 3 paramters.
\newcommand*{\cventry}[3]{
% \begin{multicols}{2}
    \begin{justify}
    \vspace{-1em}   % Delete space above section name
     
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  
  %\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth} R{4.5cm}}
%   \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{12.5cm} R{6.5cm}}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{0.68\textwidth} R{0.32\textwidth}}
%     \begin{tabular*}{6.5cm}{@{\extracolsep{\fill}} L{6.5cm} R{6.5cm}}
%   \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{6.5cm} R{3.5cm}}
%     \ifempty{#1#4}
%       \entrytitlestyle{#1} & \entrylocationstyle{#2} \\
      \entrytitlestyle{#1} & \entrylocationstyle{#2}\\
%       \entrypositionstyle{#1} & \entrydatestyle{#4} \\}
    %\multicolumn{2}{L{\textwidth - cm}}{\descriptionstyle{#5}}
    \multicolumn{2}{L{1\textwidth}}{\descriptionstyle{#3}}
%     \multicolumn{2}{L{19cm}}{\descriptionstyle{#3}}
  \end{tabular*}
  \end{justify}
%    \end{multicols}
}
%Ronak - new cventry with 3 paramters.
\newcommand*{\cventryone}[2]{
\begin{justify}
    \vspace{-1em}   % Delete space above section name
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  %\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth} R{4.5cm}}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{1\textwidth} R{6.5cm}}
%     \ifempty{#1#4}
%       \entrytitlestyle{#1} & \entrylocationstyle{#2} \\
      \entrytitlestyle{#1}\\
%       \entrypositionstyle{#1} & \entrydatestyle{#4} \\}
    %\multicolumn{2}{L{\textwidth - cm}}{\descriptionstyle{#5}}
    \multicolumn{2}{L{1\textwidth}}{\descriptionstyle{#2}}
  \end{tabular*}
\end{justify}
}

\newcommand*{\cventrytwo}[1]{
\begin{justify}
    \vspace{-1em}   % Delete space above section name
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  %\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth} R{4.5cm}}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{1\textwidth} R{6.5cm}}
%     \ifempty{#1#4}
%       \entrytitlestyle{#1} & \entrylocationstyle{#2} \\
%       \entrypositionstyle{#1} & \entrydatestyle{#4} \\}
    %\multicolumn{2}{L{\textwidth - cm}}{\descriptionstyle{#5}}
    \multicolumn{2}{L{1\textwidth}}{\descriptionstyle{#1}}
  \end{tabular*}
\end{justify}
}

% \def\ReplaceStr#1{%
%   \IfSubStr{#1}{.tex}{%
%     \StrSubstitute{#1}{.tex}{}}{#1}}

% \newcommand*{\importsectioncommandone}[1]{

%     \cvsection{\ReplaceStr{#1}}
%     \vspace{+2mm}
%     \import{\sectiondir}{#1}
%     \vspace{+2mm}
% }

\newcommand*{\importsectioncommandtwo}[2]{
    
    \uppercase {\cvsection{#2}}
    \vspace{+4mm}
    \import{\sectiondir}{#1}
    \vspace{+4mm}
}
\newcommand*{\importsectioncommandthree}[2]{

    \uppercase {\cvsection{#2}}
    \vspace{+2mm}
    \import{\sectiondir}{#1}
    \vspace{+2mm}
}



%Ronak - new cventry with 3 paramters. Similar to my resume
\newcommand*{\cventrysingleline}[2]{
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{-1pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{2cm} L{25cm}}
    \ifempty{#1#2}
{\begin{verbatim}|Topic |content| - 2 categories needed. ERROR\end{verbatim}}
     {\entrytitlestyle{#1} & \descriptionstyle{#2} \\}
    %\multicolumn{2}{L{17cm}}{\descriptionstyle{#5}}
  \end{tabular*}
}

% Define an environment for cvsubentry
\newenvironment{cvsubentries}{
  \begin{center}
}{
  \end{center}
}
% Define a subentry of cv information
% Usage: \cvsubentry{<position>}{<title>}{<date>}{<description>}
\newcommand*{\cvsubentry}[4]{
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{12.5cm} R{4.5cm}}
    \setlength\leftskip{0.2cm}
    \subentrytitlestyle{#2} & \ifthenelse{\equal{#1}{}}
      {\subentrydatestyle{#3}}{}
    \ifthenelse{\equal{#1}{}}
      {}
      {\subentrypositionstyle{#1} & \subentrydatestyle{#3} \\}
    \ifthenelse{\equal{#4}{}}
      {}
      {\multicolumn{2}{L{17.0cm}}{\subdescriptionstyle{#4}} \\}
  \end{tabular*}
}

% Define an environment for cvhonor
\newenvironment{cvhonors}{
  \begin{center}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} C{1.5cm} L{13.0cm} R{2.5cm}}
}{
    \end{tabular*}
  \end{center}
}
% Define a line of cv information(honor, award or something else)
% Usage: \cvhonor{<position>}{<title>}{<location>}{<date>}
\newcommand*{\cvhonor}[4]{
  \honordatestyle{#4} & \honorpositionstyle{#1}, \honortitlestyle{#2} & \honorlocationstyle{#3}
  \\
}

% Define an environment for cvskill
\newenvironment{cvskills}{
  \begin{center}
    \setlength\tabcolsep{1ex}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} r L{15.2cm}}
}{
    \end{tabular*}
  \end{center}
}
% Define a line of cv information(skill)
% Usage: \cvskill{<type>}{<skillset>}
\newcommand*{\cvskill}[2]{
    \skilltypestyle{#1} & \skillsetstyle{#2}
  \\
}

\newenvironment{cvitemsone}{
  \vspace{-4mm}
  \begin{justify}
  \begin{itemize}[leftmargin=2ex, nosep, noitemsep]
    \setlength{\parskip}{0pt}
    \renewcommand{\labelitemi}{\bullet}
}{
  \end{itemize}
  \end{justify}
  \vspace{-4mm}
}

% Define an environment for cvitems(for cventry)
\newenvironment{cvitems}{
  \vspace{-4mm}
  \begin{justify}
  \begin{itemize}[leftmargin=0ex, nosep, noitemsep]
    \setlength{\parskip}{0pt}
    \renewcommand{\labelitemi}{}
}{
  \end{itemize}
  \end{justify}
  \vspace{-4mm}
}


%-------------------------------------------------------------------------------
%                Commands for elements of Cover Letter
%-------------------------------------------------------------------------------
% Define an environment for cvletter
\newenvironment{cvletter}{
  \lettertextstyle
}{
}

% Define a paragraph for cvletter
% Usage: \cvparagraph{<paragraph-title>}
\newcommand{\cvparagraph}[1]{
  \par\addvspace{2.5ex}
  \phantomsection{}
  \paragraphstyle{#1}
  \color{gray}\vhrulefill{0.9pt}
  \par\nobreak\addvspace{0.4ex}
}

% Define a title of the cover letter
% Usage: \makelettertitle
\newcommand*{\makelettertitle}{
  \vspace{8.4mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{12.5cm} R{4.5cm}}
    \recipienttitlestyle{\@recipientname} & \letterdatestyle{\@letterdate}
  \end{tabular*}
  \begin{singlespace}
    \recipientaddressstyle{\@recipientaddress} \\\\
  \end{singlespace}
  \ifthenelse{\isundefined{\@lettertitle}}
    {}
    {\lettertitlestyle{\@lettertitle} \\}
  \lettertextstyle{\@letteropening}
}

% Define a closing of the cover letter
% Usage: \makeletterclosing
\newcommand*{\makeletterclosing}{
  \vspace{3.4mm}
  \lettertextstyle{\@letterclosing} \\\\
  \letternamestyle{\@firstname \@lastname}
  \ifthenelse{\isundefined{\@letterenclosure}}
    {\\}
    {
      \\\\\\
      \letterenclosurestyle{\@letterenclname:  \@letterenclosure} \\
    }
}


