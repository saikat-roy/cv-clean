% Author: Saikat Roy
% Edited: 31/05/2020

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2011/03/26 My custom CV class]

\LoadClass{article}

\RequirePackage{titlesec}
\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
  
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
 
\RequirePackage{geometry}
\setlength{\evensidemargin}{-0.25in}
\setlength{\headheight}{0in}
\setlength{\headsep}{0in}
\setlength{\oddsidemargin}{-0.25in}
\setlength{\paperheight}{11in}
\setlength{\paperwidth}{8.5in}
\setlength{\tabcolsep}{0in}
\setlength{\textheight}{9.5in}
\setlength{\textwidth}{7in}
\setlength{\topmargin}{-0.3in}
\setlength{\topskip}{0in}
\setlength{\voffset}{-0.1in}



\RequirePackage{enumitem}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=false,
    linkcolor=black,
    filecolor=white,      
    urlcolor=white,
}

\RequirePackage{graphicx}
 
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\edsubsection}[5]{%
%   \vspace{-5pt}
\begin{tabular*}{\textwidth}{l@{\cftdotfill{\cftsecdotsep}\extracolsep{\fill}}r}
	\vspace{-0.5pt}
	{\scshape{\bfseries #1}} & #2 \\
	{#3} & {\small#4} \\
	{\hspace{10pt}\small{\textit{\textbf{--} Thesis: #5}}} & \\
\end{tabular*}
}

\newcommand{\worksubsection}[5]{%
%   \vspace{-5pt}
\begin{tabular*}{\textwidth}{l@{\cftdotfill{\cftsecdotsep}\extracolsep{\fill}}r}
	\textbf{\textsc{#1}} & #2 \\
	{#3} & {\small#4} \\
\end{tabular*}\\
\parbox{0.75\textwidth}{
\small
    \begin{itemize}
    \vspace{-2pt}
    #5
    \end{itemize}
}
}
%   \subsubsection[#1]{#1}%
%   \vspace{-5pt}
%   #2 \hfill #3 \\
%   #4
}

\pagestyle{empty}


\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}
}

\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ {\large\textperiodcentered} #4 \ {\large\textperiodcentered} \ #5%
        }%
    }%
}

\newcommand{\resitem}[1]{\small \item[\textbf{--}] #1 \vspace{-4pt}}

\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}
