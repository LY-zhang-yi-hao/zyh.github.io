---
title: 如何使用 Hexo 管理博客
date: 2025-09-15 21:05:30
tags: [Hexo, 博客, 教程]
categories: 技术
description: 详细介绍 Hexo 博客的日常管理和文章发布流程
---

## Hexo 博客管理指南

Hexo 是一个基于 Node.js 的静态博客框架，**没有传统的后台管理界面**，所有操作都通过命令行和文件编辑完成。

### 📝 创建新文章

#### 方法一：命令行创建
```bash
hexo new "文章标题"
```

#### 方法二：手动创建
在 `source/_posts/` 目录下创建 `.md` 文件

### 🏷️ 文章属性设置

每篇文章开头的 Front Matter 控制文章属性：

```yaml
---
title: 文章标题
date: 2025-09-15 21:03:33
tags: [标签1, 标签2]
categories: 分类名
description: 文章描述
---
```

### 🚀 发布流程

1. **编写文章** - 使用 Markdown 语法
2. **本地预览** - `hexo server`
3. **生成静态文件** - `hexo generate`
4. **部署到 GitHub** - `hexo deploy`

### 📁 目录结构

```
my-blog/
├── source/_posts/    # 文章目录
├── themes/          # 主题目录
├── _config.yml      # 主配置文件
└── package.json     # 依赖配置
```

### 🛠️ 常用命令

- `hexo new [layout] <title>` - 新建文章
- `hexo generate` - 生成静态文件
- `hexo server` - 启动本地服务器
- `hexo deploy` - 部署到远程
- `hexo clean` - 清理缓存

<!-- more -->

### 💡 进阶技巧

#### 1. 文章摘要控制
使用 `<!-- more -->` 标签控制首页显示的摘要长度。

#### 2. 静态资源管理
图片等资源放在 `source/images/` 目录下。

#### 3. 草稿功能
```bash
hexo new draft "草稿标题"  # 创建草稿
hexo publish "草稿标题"   # 发布草稿
```

#### 4. 主题自定义
修改 `themes/typography/_config.yml` 配置主题样式。

### 📚 总结

Hexo 虽然没有可视化后台，但通过命令行和文件编辑的方式更加灵活高效。熟悉这些基本操作后，您就能轻松管理自己的博客了！