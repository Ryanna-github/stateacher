# 著名统计学者研究信息库


## 流程

1. 学习 MarkDown，YAML 用法及语法规范，初学者先阅读入门教程（[MarkDown 入门参考](https://www.runoob.com/markdown/md-tutorial.html)，[YAML 入门参考](https://www.runoob.com/w3cnote/yaml-intro.html)）
2. 阅读 [填写说明](#填写说明) 中的规定。
3. 阅读示例文件（example-Mikael-Kuusela.md, example-Qiu-YiXuan.md）
4. 按要求开始填写。
5. 自查语法规范性，重复修改：
    1. YAML 部分可借助 [推荐工具](#推荐工具) 进行自查。
    2. 其他 MarkDown 部分，如头像图片显示正常，超链接文字正常跳转，正确换行。借助 [Typora](https://typora.io/) 等编辑器或 [线上工具](https://md.mzr.me/) 检查。
6. 确认内容无误后，根据 [填写说明](#填写说明) 中命名规范和路径上传文件，等待审核。
7. 审核结果：
    1. 未通过：重新修改，返回第5步。
    2. 通过：完成提交。



## 填写说明

- 阅读前先下载模板 template.md.
- 注意 YAML 填写规范，如禁用 tab，冒号后需加空格构成完整的键值对，避免不必要的空行等。
- 学者信息直接填写官网等查询到的一手资料，信息收集渠道可参考但不限于以下来源：
    - 学者个人主页
    - Google Scholar，百度学术，必应学术
    - [ResearchGate](https://www.researchgate.net/)
- 字段填写规则：
    - School 字段注意添加链接，以避免混淆，格式如 school: 学院名称 [学院网址]
    - email，homepage 等字段如有多个应逐一列出。
    - collaboration, group 字段非必填，若学者有交叉合作研究可填写。
    - advisor 字段填写格式为：导师姓名 [导师邮箱/网址]，邮箱信息优先，若无邮箱则填写导师信息网址。
    - aminer 字段必填，对应链接在 [AMiner 网站](https://www.aminer.org/) 检索学者得到，注意
- 头像尽量使用线上高清图，格式为 `![名称](图片链接)`，可在 [AMiner 网站](https://www.aminer.org/) 获取。
- 非特殊情况不增添模板中字段，不收集联系电话等信息。若发现其他有价值字段欢迎在微信群讨论。
- 文件命名格式：学者姓名.md，空格以（-）代替，中文学者名每个汉字首字母大写，姓与名之间用（-）连接，如 Mikael-Kuusela.md，Qiu-YiXuan.md.
- 文件上传路径：学者姓名.md 上传到对应所属学校文件夹下。
- 无需深入调查，只用收集个人主页外露信息即可。
- 填写语言忠于信息来源，无需自行翻译，YAML 部分按信息来源填写，中英文均可，人物介绍等部分若为英文，填入 Biography[English]，若为中文，填入 Biography[中文]，研究方向（Interests），教育背景（Education）等同理。



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
- 每个文件中重复的节点最初用 & 符号表示，之后用星号（*）标记。
- YAML总是要求使用冒号和逗号作为列表分隔符，且其后带有英文空格。
- 节点应该用感叹号（!）或双感叹号（!!）进行标记，后面跟着可以扩展为 URI 或 URL 的字符串。



##  推荐工具

- 提交前可使用线上 YAML formatter 自查格式/语法问题，如 https://jsonformatter.org/yaml-formatter, https://mtp.tools/formatters/yaml-formatter.
- 使用浏览器插件直接将选中内容复制为 Markdown，如 https://github.com/notlmn/copy-as-markdown（支持 Chrome, Firefox），可提升复制带链接的文字效率。



## 联系方式 & 更多

- 统计之都主站：https://github.com/cosname/cosx.org

