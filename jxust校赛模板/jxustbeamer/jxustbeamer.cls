\ProvidesClass{jxustbeamer}

%设置文档类
\LoadClass[serif]{beamer}
%使用主题
%\usetheme{cambridgeUS}

%常用宏包
\RequirePackage{
amsmath,  % AMS 数学公式 宏包
amssymb,  % AMS 数学符号 宏包
amsfonts, % AMS 数学字体 宏包
ctex,     % 中文 宏包
graphicx, % 插图 宏包
tabularx, % 表格 宏包
xcolor,   % 彩色 宏包
listings, % 代码抄录 宏包
enumerate,% 列表 宏包
hyperref, % 超链接 宏包
}


%设置虚数,自然底数,微分符号
\newcommand{\dd}{\,\mathrm{d}}
\newcommand{\ee}{\mathrm{e}}
\newcommand{\ii}{\mathrm{i}}

%设置图片路径
\graphicspath{{figures/}}

%代码抄录 基本设置
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

