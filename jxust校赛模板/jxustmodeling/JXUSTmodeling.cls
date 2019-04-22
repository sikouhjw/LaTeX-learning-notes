\ProvidesClass{JXUSTmodeling}

%设置纸张为A4纸,行距为1.25倍,设置默认字号为小4
\LoadClass[oneside,a4paper,UTF8,linespread=1.25,zihao=-4]{ctexart}

%设置页面边距
\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}

%载入基本的数学宏包
\RequirePackage{amsmath}
\RequirePackage{amsfonts} 
\RequirePackage{amsthm}
\RequirePackage{amssymb}

%扩展的数学宏包, 可根据自己的需求载入
%\RequirePackage{bm} %用\bm{}命令生成伪粗体
%\RequirePackage{upgreek}%用\uppi 调用正体的圆周率
%\RequirePackage{mathrsfs}%\mathscr{}调用傅里叶变换,拉普拉斯变换的符号

%设置虚数,自然底数,微分符号
\newcommand{\dd}{\,\mathrm{d}}
\newcommand{\ee}{\mathrm{e}}
\newcommand{\ii}{\mathrm{i}}

%载入表格宏包和插图宏包
\RequirePackage{booktabs,tabularx}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage{caption}


%定义居中的X列格式
\newcolumntype{Y}{>{\centering\arraybackslash}X}

%扩展的表格宏包和插图宏包
%\RequirePackage{subfig}
%\RequirePackage{longtable}

%设置图片路径
\graphicspath{{figures/}}

%载入列表宏包
\RequirePackage{enumerate}

%载入ulem宏包,提供可断行下划线的命令\uline
\RequirePackage{ulem}

%载入颜色宏包
\RequirePackage{color,xcolor}

%载入代码宏包
\RequirePackage{listings}
\lstset{	%调用Matlab的默认颜色设置,
	%language=Matlab,%设置默认语言
	frame=none,%取消边框
	breaklines=true,%允许断行
	%breakatwhitespace=true,%使用此命令经允许在空格处断行
	basicstyle=\small\ttfamily,%设置代码基本样式
	flexiblecolumns=true,%改善字母间距
	keywordstyle=\color{blue},%设置关键词样式
%	deletekeywords={disp},%可在此行去除特定关键词的语法高亮
	stringstyle=\color[rgb]{0.75,0,0.75},%设置字符串样式
	commentstyle=\songti\color[rgb]{0,0.5,0},%设置注释样式
	tabsize=4,%设置制表符缩进
}

%设置章节格式
\ctexset{
	section={%设置 section 格式
		format={\zihao{4}\heiti\centering},%4号黑体字居中
		name={,、},%序号后跟顿号
		aftername={\hspace{5pt}},%修改序号和标题直接的间距
		number=\chinese{section},%设置序号为中文
		%beforeskip=30pt,%设置章节标题前的垂直间距
		%fixskip=true,
		%默认情况下，article、book 和report 类的标题与正文的距离除了由beforeskip 		
		%和afterskip选项设置的垂直间距外，还会有一些多余的间距。fixskip 选项用于抑制这些多余间距
	},
	subsection={%设置 subsection 格式
		format={\zihao{-4}\songti\raggedright},%小4号宋体居左
		name={},
		number={\arabic{section}.\arabic{subsection}},	%设置序号格式
	},
	appendix/name={附\quad{}录},%在附录序号前添加 "附 录"
}

%重定义封面
\newcommand*{\authorone}[1]{\gdef\@authorone{#1}}
\newcommand*{\authoroneclass}[1]{\gdef\@authoroneclass{#1}}
\newcommand*{\authortwo}[1]{\gdef\@authortwo{#1}}
\newcommand*{\authortwoclass}[1]{\gdef\@authortwoclass{#1}}
\newcommand*{\authorthree}[1]{\gdef\@authorthree{#1}}
\newcommand*{\authorthreeclass}[1]{\gdef\@authorthreeclass{#1}}
\newcommand*{\logo}[1]{\gdef\@logo{#1}}

\renewcommand\maketitle{\begin{titlepage}%
\let\footnotesize\small
\let\footnoterule\relax
\null\vfil
\vskip 40\p@ \let \footnote \thanks
\begin{center}%
	{\heiti\zihao{3} 题目: \uline{\hspace{3em}\@title\hspace{3em}} \par}%
	\vskip 3em%
	\includegraphics[width=0.3\textwidth]{\@logo}
	\vskip 3em
	{\zihao{4}
 	 \lineskip .75em%
	  \begin{tabular}[t]{cc}
		队员 1:\hspace{3pt}\uline{\makebox[5em][c]{\@authorone}}		&
		专业:\hspace{3pt}\uline{\makebox[10em][c]{\@authoroneclass}}	\\[1em]
		队员 2:\hspace{3pt}\uline{\makebox[5em][c]{\@authortwo}}		&
		专业:\hspace{3pt}\uline{\makebox[10em][c]{\@authortwoclass}}	\\[1em]
		队员 3:\hspace{3pt}\uline{\makebox[5em][c]{\@authorthree}}		&
		专业:\hspace{3pt}\uline{\makebox[10em][c]{\@authorthreeclass}}	\\[1em]
	  \end{tabular}\par}%
	\vskip 1.5em%
\end{center}\par
\@thanks
\vfil\null
\end{titlepage}%
}


%设置页眉页脚格式
\pagestyle{plain}

%载入超链接宏包
\RequirePackage{hyperref}
\hypersetup{breaklinks,colorlinks}%允许超链接断行,取消超链接的边框,使链接文字带颜色
%\hypersetup{hidelinks}%取消超链接的颜色
