# 著名统计学者研究信息库



## 填写说明

- 注意 YAML 填写[规范](https://en.wikipedia.org/wiki/YAML)，如禁用 tab，冒号后需加空格构成完整的键值对等。
- 学者信息直接填写官网等查询到的一手资料，信息收集渠道可参考但不限于以下来源：
    - 学者个人主页
    - Google Scholar，百度学术，必应学术
    - [ResearchGate](https://www.researchgate.net/)
- 字段填写规则：
    - School 字段注意添加链接，以避免混淆，格式如 school: 学院名称 [学院网址]
    - email，homepage 等字段如有多个应逐一列出。
    - collaboration, group 字段非必填，若学者有交叉合作研究可填写。
    - advisor 字段填写格式为：导师姓名 [导师邮箱/网址]，邮箱信息优先，若无邮箱则填写导师信息网址。
    - aminer 字段必填，对应链接在 [AMiner 网站](https://www.aminer.org/)检索学者得到。
- 头像尽量使用线上高清图，格式为 ![名称](图片链接)，可在 [AMiner 网站](https://www.aminer.org/) 获取。
- 非特殊情况不增添模板中字段，不收集联系电话等信息。若有特殊有价值字段欢迎用 comment 给出。
- 文件命名格式：学者姓名.md，空格以（-）代替，如 Mikael-Kuusela.md，Qiu-YiXuan.md.
- 文件上传路径：学者姓名.md 上传到对应所属学校文件夹下。


## YAML 填写自查

> 参考[网址](https://www.tutorialspoint.com/yaml/yaml_basics.htm)，YAML 基本元素的概要如下:

- YAML 中的注释以（#）字符开头。
- 注释必须与其他标记用空格分隔。
- 空格的缩进用来表示结构。
- 不可使用 tab。
- 列表成员由前导的连字符“-”表示。
- 列表成员用方括号括起来，用逗号分隔。
- 关联数组使用冒号“:”表示，键值对形式。它们用花括号{}括起来。
- 单个流的多个文档用3个连字符（---）分隔。
- 每个文件中重复的节点最初用&符号表示，之后用星号（*）标记。
- YAML总是要求使用冒号和逗号作为列表分隔符，且其后带有英文空格。
- 节点应该用感叹号（!）或双感叹号（!!）进行标记，后面跟着可以扩展为 URI 或 URL 的字符串。

##  推荐工具

- 提交前可使用线上 YAML formatter 自查格式/语法问题，如 https://jsonformatter.org/yaml-formatter, https://mtp.tools/formatters/yaml-formatter.
- 使用浏览器插件直接将选中内容复制为 Markdown，如 https://github.com/notlmn/copy-as-markdow，可提升复制带链接的文字效率。

