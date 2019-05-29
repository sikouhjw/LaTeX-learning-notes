\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JXUSTmodeling}[2019/05/27 version 1.1]

\newif\if@bwprint\@bwprintfalse
\newif\if@timesfont\@timesfontfalse

\DeclareOption{timesfont}{\@timesfonttrue}
\DeclareOption{bwprint}{\@bwprinttrue}
\ProcessOptions\relax
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
\newcommand*{\dd}{\,\mathrm{d}}
\newcommand*{\ee}{\mathrm{e}}
\newcommand*{\ii}{\mathrm{i}}

%载入表格宏包和插图宏包
\RequirePackage{booktabs,tabularx,multirow,longtable}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage{caption}

\captionsetup{format=hang}%设置浮动体标题悬挂缩进

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

\if@bwprint\relax
\else
%载入颜色宏包
\RequirePackage{color,xcolor}
\fi

%载入代码宏包
\RequirePackage{listings}
%设置代码的默认样式
\lstset{
	frame=none,%取消边框
	breaklines=true,%允许自动断行
	%breakatwhitespace=true,%使用此命令仅允许在空格处自动断行
	showstringspaces=false,%不显示字符串中的空格
	basicstyle=\small\ttfamily,%设置代码基本样式
	flexiblecolumns=true,%改善字母间距
	keywordstyle=\color{blue},%设置关键词样式
	stringstyle=\color[rgb]{0.75,0,0.75},%设置字符串样式
	commentstyle=\songti\color[rgb]{0,0.5,0},%设置注释样式
	tabsize=4,%设置制表符缩进
}

%设置matlab代码环境
\lstnewenvironment{matlab}[1][]{
	\lstset{
		language=Matlab,
	%	deletekeywords={disp},%可在此行去除特定关键词的语法高亮		
		keywordstyle=\color{blue},%设置关键词样式
		stringstyle=\color[rgb]{0.75,0,0.75},%设置字符串样式
		commentstyle=\songti\color[rgb]{0,0.5,0},%设置注释样式
		#1
	}
}{}

%设置python代码环境
\lstnewenvironment{python}[1][]{
	\lstset{
		language=Python,
		keywordstyle=\color[RGB]{255,119,0},%设置Keywords样式
		morekeywords={as},%将特定单词加入Kewords中
		deletekeywords={print},%从keywords中去除特定单词
		keywordstyle=[2]\color[RGB]{144,0,144},%设置Builtins样式
		morekeywords=[2]{print},%将特定单词加入Builtins中
		stringstyle=\color[RGB]{0,170,0},%设置字符串样式
		commentstyle=\songti\color[RGB]{221,0,0},%设置注释样式	
		#1
	}
}{}


%设置章节格式
\ctexset{
	section={%设置 section 格式
		format={\zihao{4}\heiti\centering},%4号黑体字居中
		name={,、},%序号后跟顿号
		aftername={\hspace{0pt}},%修改序号和标题直接的间距
		number=\chinese{section},%设置序号为中文
		%beforeskip=30pt,%设置章节标题前的垂直间距
		%fixskip=true,
		%默认情况下，article、book 和report 类的标题与正文的距离除了由beforeskip 		
		%和afterskip选项设置的垂直间距外，还会有一些多余的间距。fixskip 选项用于抑制这些多余间距
	},
	subsection={%设置 subsection 格式
		format={\zihao{-4}\songti\raggedright},%小4号宋体居左
		name={},
        aftername={\hspace{5bp}},%修改序号和标题直接的间距
		number={\arabic{section}.\arabic{subsection}},	%设置序号格式
	},
	appendix={
        name={附录,：},%在附录序号前添加 "附录"
        number=\chinese{section},
    }
}

\if@timesfont
\setmainfont{Times New Roman}%设置英文字体为Times New Roman
\fi


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
	{\heiti\zihao{3} 题目: \underline{\hspace{1em}\@title\hspace{1em}} \par}%
	\vskip 3em%
	\includegraphics[width=0.3\textwidth]{\@logo}
	\vskip 3em
	{\zihao{-4}
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
\setcounter{footnote}{0}
\global\let\thanks\relax%清楚宏定义
\global\let\maketitle\relax
\global\let\@thanks\@empty
\global\let\@author\@empty
\global\let\@date\@empty
\global\let\@title\@empty
\global\let\@authorone\@empty
\global\let\@authoroneclass\@empty
\global\let\@authortwo\@empty
\global\let\@authortwoclass\@empty
\global\let\@authorthree\@empty
\global\let\@authorthreeclass\@empty
\global\let\@logo\@empty
\global\let\authorone\relax
\global\let\authoroneclass\relax
\global\let\authortwo\relax
\global\let\authortwoclass\relax
\global\let\authorthree\relax
\global\let\authorthreeclass
\global\let\logo\relax
\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax
}


%设置页眉页脚格式
\pagestyle{plain}

%载入超链接宏包
\RequirePackage{hyperref}
\hypersetup{breaklinks,colorlinks}%允许超链接断行,取消超链接的边框,使链接文字带颜色
\hypersetup{hidelinks,bookmarksnumbered=true,bookmarksopen=true,pdfstartview=Fit}%取消超链接的颜色，书签目录增加编号