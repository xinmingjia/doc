# Dictionary Engine Specification

Version: 1.0

Status: Design

Owner: Founder

Architect: ChatGPT

Developer: Lovable

---

# Purpose

Dictionary Engine 是整个系统的公共基础能力。

负责所有可动态维护的字典数据。

当前：

- 市场

未来：

- 策略
- 标签
- 国家
- 行业
- 券商
- 账户
- ETF分类

全部复用本组件。

---

# Design Principles

## Single Source of Truth

所有选项均来自 Dictionary。

禁止：

- Hardcode
- Legacy Options
- Local Storage

Dictionary 是唯一数据源。

---

## Component Reuse

所有页面必须使用 DictionaryCombobox。

禁止：

每个页面自己实现 Dropdown。

---

## Analytics Ready

Dictionary 不只是输入。

未来需要支持：

- 使用次数
- 胜率
- 盈亏统计
- Dashboard Filter

因此数据结构不得写死。

---

# Architecture

Dictionary Database

↓

Dictionary Store

↓

Dictionary Hook

↓

Dictionary Combobox

↓

Business Pages

---

# Component Responsibilities

## Database

负责：

CRUD

不负责UI。

---

## Store

负责：

Load

Refresh

Cache

Add

Delete（未来）

Rename（未来）

---

## Hook

负责：

提供数据。

不处理UI。

---

## DictionaryCombobox

负责：

展示

搜索

选择

创建

刷新

不负责数据库。

---

## Business Page

负责：

接收 value

返回 value

不负责 Dictionary 逻辑。

---

# UI Specification

点击输入框

↓

立即展开所有选项。

输入

↓

实时过滤。

没有匹配

↓

显示：

+ 创建："用户输入"

点击

↓

创建

↓

刷新

↓

自动选中

↓

关闭。

---

# Search Rules

实时过滤。

忽略大小写。

忽略首尾空格。

禁止重复。

---

# Create Rules

如果不存在：

允许创建。

如果已存在：

直接选择。

不得重复新增。

---

# Future Features

最近使用排序

Archive

Dictionary 管理页面

统计

使用次数

引用数量

---

# Technical Requirements

禁止使用：

HTML datalist

必须使用：

Professional Combobox

推荐：

shadcn/ui

Popover

Command

CommandInput

CommandItem

---

# Non Goals

本版本不实现：

删除

Rename

Archive

排序

Analytics

Dictionary 管理页面

---

# Acceptance Criteria

必须全部满足：

[ ] 点击立即展开全部

[ ] 实时搜索

[ ] 点击选择

[ ] Enter选择

[ ] Esc关闭

[ ] 新建选项

[ ] 自动刷新

[ ] 自动选中

[ ] 不允许重复

[ ] Dictionary 为唯一数据源

[ ] 不使用 datalist
