\ProvidesClass{jxustgt}

%设置纸张为A4纸，行距为1.25倍，默认字号为小四
\LoadClass[UTF8,a4paper,zihao=-4,linespread=1.25]{ctexart}

%设置页面边距
\RequirePackage[top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm]{geometry}

%设置英文字体为Times New Roman
\setmainfont{Times New Roman}

%常用宏包
\RequirePackage{
	amsmath,  % AMS 数学公式 宏包
	amssymb,  % AMS 数学符号 宏包
	amsfonts, % AMS 数学字体 宏包
	amsthm,   % 证明环境 宏包
	upgreek,  % 直立希腊字母 宏包
	ctex,     % 中文 宏包
	graphicx, % 插图 宏包
	tabularx, % 表格 宏包
	xcolor,   % 彩色 宏包
	listings, % 代码环境 宏包
	enumerate,% 列表 宏包
	caption,  % 标题控制 宏包
	ulem,     % 下划线 宏包
}

%设置虚数,自然底数,微分符号
\newcommand{\dd}{\,\mathrm{d}}
\newcommand{\ee}{\mathrm{e}}
\newcommand{\ii}{\mathrm{i}}
\newcommand{\jj}{\mathrm{j}}

%设置图片路径
\graphicspath{{figures/}}

%代码环境 基本设置
\lstset{
	frame=none,%取消边框
	breaklines=true,%允许断行
	%breakatwhitespace=true,%使用此命令经允许在空格处断行
	basicstyle=\small\ttfamily,%设置代码基本样式
	flexiblecolumns=true,%改善字母间距
	keywordstyle=\color{blue},%设置关键词样式
	%deletekeywords={disp},%可在此行去除特定关键词的语法高亮
	stringstyle=\color[rgb]{0.75,0,0.75},%设置字符串样式
	commentstyle=\songti\color[rgb]{0,0.5,0},%设置注释样式
	tabsize=4,%设置制表符缩进
	showstringspaces=false%取消字符间的显示空格
}

%设置章节格式
\ctexset{
	section={%设置 section 格式
		format={\zihao{-3}\heiti\centering},%小三号黑体字居中
		name={第,章},%第X章
		aftername={\hspace{12bp}},%修改序号和标题直接的间距(空两格)
		number=\chinese{section},%设置序号为中文
		%beforeskip=30pt,%设置章节标题前的垂直间距
		%fixskip=true,
		%默认情况下，article、book 和report 类的标题与正文的距离除了由beforeskip 		
		%和afterskip选项设置的垂直间距外，还会有一些多余的间距。fixskip 选项用于抑制这些多余间距
	},
	subsection={%设置 subsection 格式
		format={\zihao{4}\songti\raggedright},%四号宋体居左
		name={},
		number={\arabic{section}.\arabic{subsection}},	%设置序号格式(如1.1)
	},
	appendix/name={附\hspace{12bp}录},%在附录序号前添加 "附  录"
}