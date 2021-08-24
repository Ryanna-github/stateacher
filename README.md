# 著名统计学者研究信息库


## 流程

1. 学习 MarkDown，YAML 用法及语法规范，初学者先阅读入门教程（[MarkDown 入门参考](https://www.runoob.com/markdown/md-tutorial.html)，[YAML 入门参考](https://www.runoob.com/w3cnote/yaml-intro.html)）
2. 阅读 [填写说明](#填写说明) 中的规定。
3. 阅读示例文件（[example-Mikael-Kuusela.md](https://github.com/Ryanna-github/stateacher/blob/master/example-Mikael-Kuusela.md), 
[example-Yixuan-QIU.md](https://github.com/Ryanna-github/stateacher/blob/master/example-Yixuan-QIU.md)）
4. 按要求开始填写。
    1. Yaml 部分，参考模板和示例填写即可。注意符合yaml语法规范。如果想增加字段，建议提前在微信群和大家讨论确定。
    2. Markdown 部分，如果从网页复制较多内容，务必通过浏览器安装copy-as-markdown插件，鼠标右键选择 Copy selection as Markdown，然后粘贴。这样才能保障内容格式以及相关超链接正常。
5. 自查语法规范性，重复修改：
    1. YAML 部分(两个```---```中间的，在文件开头若干行)可借助 [推荐工具](#推荐工具) 进行自查，看yaml文件是否能正常转换为json，如果有问题根据提示修改。
    2. Markdown 部分，如头像图片显示正常，内容层级正常，超链接文字正常跳转，正确换行。借助 [Typora](https://typora.io/) 等编辑器或 [线上工具](https://md.mzr.me/) 检查。
6. 确认内容无误后，根据 [填写说明](#填写说明) 中命名规范和路径上传文件，等待审核。
7. 审核结果：
    1. 未通过：重新修改，返回第5步。
    2. 通过：完成提交。



## 填写说明

- 阅读说明前先下载模板 template.md.
- 注意 YAML 填写规范，如禁用 tab，冒号后需加空格构成完整的键值对，避免不必要的空行等。
- 学者信息直接填写官网等查询到的一手资料，信息收集渠道可参考但不限于以下来源：
    - 学者官方主页(核心)
    - 学者个人主页(核心)
    - AMiner主页(核心)
    - Google Scholar(核心)
    - Google等搜索学者的得到其他相关信息（辅助）
    - 百度学术，必应学术，ResearchGate 等（辅助）
- 字段填写规则：
    - school 字段注意添加链接，以避免混淆，格式如 school: 学院名称 [学院网址]
    - email，homepage 等字段如有多个应逐一列出。
    - collaboration, group 字段非必填，若学者有交叉合作研究可填写。
    - advisor 字段填写格式为：导师姓名 [导师邮箱/网址]，邮箱信息优先，若无邮箱则填写导师信息网址。
    - aminer 字段必填，对应链接在 [AMiner 网站](https://www.aminer.org/) 检索学者得到，注意
- 头像尽量使用线上高清图，格式为 `![名称](图片链接)`，可在学者官方、个人主页或 AMiner 等网站 获取。
- 填写语言忠于信息来源，无需自行翻译，YAML 部分按信息来源填写，中英文均可，人物介绍等部分若为英文，填入 Biography[English]，若为中文，填入 Biography[中文]，研究方向（Interests），教育背景（Education）等同理。
- 复制文字应包含网页原本的超链接，可使用 [推荐工具](#推荐工具) 中的插件。
- 在末尾 References 模块标明填写相关材料时候引用的资料链接，以便后续核查；尤其是参考的非作者主页的相关链接。
- 文件命名格式：学校缩写-学者姓名.md，学者姓名部分，空格以（-）代替，华人学者英文名和其主页一致即可，名与姓氏之间用（-）连接，如 Mikael-Kuusela.md，Yixuan-QIU.md. 绝大部分文件以自动创建，无需修改。
- 文件上传路径：学者姓名.md 上传到对应所属学校文件夹下，文件夹命名为学校缩写形式，学校缩写与全程对应见表格 [tops_us.csv](https://github.com/Ryanna-github/stateacher/blob/master/Data/tops_us.csv)
- 非特殊情况不增添模板中字段，不收集联系电话等信息。若发现其他有价值字段欢迎在 Issues 或微信群讨论。




## YAML 填写自查

> 参考 [网址](https://www.tutorialspoint.com/yaml/yaml_basics.htm)，YAML 基本元素的概要如下:

- YAML 中的注释以（#）字符开头。
- 注释必须与其他标记用空格分隔。
- 空格的缩进用来表示结构。
- 不可使用 tab。
- 列表成员由前导的连字符（-）表示。
- 列表成员用方括号括起来，用逗号分隔。
- 关联数组使用冒号（:）表示，键值对形式。它们用花括号 {} 括起来。
- 单个流的多个文档用3个连字符（---）分隔。
- YAML总是要求使用冒号和逗号作为列表分隔符，且其后带有英文空格。



##  推荐工具

- [VsCode](https://code.visualstudio.com/) 入股不亏，好用的编辑器，可以安装 MarkDown，YAML 对应插件。
- 提交前可使用线上 YAML formatter 自查格式/语法问题，如 https://jsonformatter.org/yaml-formatter, https://mtp.tools/formatters/yaml-formatter.
- 使用浏览器插件直接将选中内容复制为 Markdown，如 https://github.com/notlmn/copy-as-markdown（支持 Chrome, Firefox），可提升复制带链接的文字效率。



## 脚本用例

> 数据填写不涉及以下操作，无需运行。

- tools/school_list.R 生成各个学校-学院缩写，及初始化对应文件夹，不覆盖已有同名文件夹，项目开始时调用一次即可，项目进行中无需使用。

```shell
Rscript school_list.R CMU-DS
```

- tools/teacher_list.R 生成对应学校-学院的 md 文件，基本字段自动填写，学校-学院名称（即文件夹名称）作为参数传递，以 CMU-DS（Carnegie Mellon University(Dept, of Statistics)）为例，用法如下：

```shell
Rscript teacher_list.R CMU-DS
```
- tools/summary.Rmd 生成对应学校-学院填写情况汇总，包括有效 YAML 行数，有效 MarkDown 行数等，用法如下：

```shell
Rscript -e "rmarkdown::render('summary.Rmd', output_file = '../Data/CMU-DS/CMU-summary.html')" CMU-DS
```
注意该命令有两处参数需要修改


## 联系方式 & 更多

- 统计之都主站：https://github.com/cosname/cosx.org

