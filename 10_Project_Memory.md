# Decision Journal Project

## Project Memory

Version: 1.0

Status: Active

Owner: CTO

Last Updated: 2026

---

# 1. Purpose

本文档记录整个项目长期稳定的上下文。

这些内容不会随着单个 Task 改变。

任何新的 AI 或开发者接手项目时，应首先阅读本文档，以快速建立正确的理解。

本文档不记录临时需求。

也不记录 Bug。

仅记录长期有效的项目约定。

---

# 2. Project Identity

项目名称：

Decision Journal

项目定位：

Personal Trading Operating System

不是：

交易记录软件。

不是：

记账软件。

不是：

量化平台。

而是：

帮助交易者持续优化交易决策的个人操作系统。

---

# 3. Product Philosophy

所有功能最终服务于：

提高交易决策质量。

任何功能如果不能帮助：

记录

分析

学习

优化

则不属于项目核心价值。

---

# 4. Data Philosophy

所有数据必须：

记录一次。

长期使用。

自动统计。

禁止：

重复录入。

禁止：

不同页面维护同一份数据。

任何数据都必须有唯一来源。

---

# 5. Dictionary Philosophy

Dictionary 是整个系统唯一动态字典。

任何：

下拉框

搜索框

自动补全

都应该来自 Dictionary。

禁止：

页面维护自己的选项。

Dictionary 是 Single Source of Truth。

---

# 6. UI Philosophy

所有用户可见字段：

默认使用中文。

例如：

市场

交易品种

交易策略

账户

券商

……

数据库：

英文。

Category：

英文。

Prompt：

英文。

代码：

英文。

这是长期约定。

---

# 7. Analytics Philosophy

增加任何字段之前。

必须思考：

未来是否能够统计？

未来 AI 是否能够分析？

如果答案是否定的。

原则上不增加。

Analytics 永远高于录入方便。

---

# 8. Component Philosophy

优先：

抽象。

其次：

复用。

最后：

开发。

如果已有组件能够解决问题。

禁止：

复制组件。

DictionaryCombobox 是目前标准案例。

---

# 9. Engine Philosophy

系统优先设计 Engine。

而不是页面。

Engine：

负责能力。

页面：

负责展示。

未来：

Dictionary Engine

Currency Engine

Analytics Engine

Review Engine

Signal Engine

AI Engine

都应该保持独立。

---

# 10. Database Philosophy

数据库设计遵循：

稳定。

可扩展。

统一。

任何字段：

都应考虑：

半年以后。

一年以后。

是否还能兼容。

避免频繁修改 Schema。

---

# 11. Prompt Philosophy

Prompt：

不是需求。

Prompt：

是开发文档。

必须：

结构清晰。

范围明确。

禁止：

模糊表达。

禁止：

自由发挥。

Prompt 是 AI Developer 的唯一依据。

---

# 12. Development Philosophy

所有开发：

先讨论。

后设计。

再开发。

最后 QA。

任何阶段：

不得跳过。

不得压缩。

不得省略。

---

# 13. Collaboration Philosophy

Founder：

提出问题。

CTO：

重新定义问题。

AI：

实现解决方案。

这是长期协作模式。

---

# 14. Decision Philosophy

如果存在多个方案。

优先选择：

长期维护成本最低。

组件复用率最高。

分析能力最强。

而不是：

最快实现。

---

# 15. Naming Convention

用户：

中文。

数据库：

英文。

Category：

英文。

Engine：

英文。

Component：

英文。

Prompt：

英文。

业务解释：

中文。

保持统一。

---

# 16. Current Stable Dimensions

当前稳定分析维度：

Market

Instrument

Strategy

未来：

Broker

Account

Sector

Country

Tag

等待业务成熟后加入。

---

# 17. Current Stable Components

DictionaryCombobox

作为整个项目标准组件。

未来：

所有 Dictionary 输入。

必须复用。

---

# 18. Documentation Philosophy

聊天记录：

不是文档。

文档：

才是真正项目资产。

任何重要结论：

都应该沉淀到文档。

而不是保留在聊天记录中。

---

# 19. Long-term Goal

未来：

任何新的 AI。

阅读：

Project Context

Development Playbook

Project Memory

即可快速恢复整个项目上下文。

无需重新解释历史。

---

# 20. Golden Rule

任何设计。

都必须同时满足：

产品正确。

技术正确。

数据正确。

未来可扩展。

如果四者冲突。

优先保证：

长期系统质量。
