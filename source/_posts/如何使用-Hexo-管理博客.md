---
title: 如何使用 Hexo 管理博客
date: 2025-09-15 21:05:30
tags: [Hexo, 博客, 教程, GitHub Pages]
categories: 技术
description: 从零开始学会使用 Hexo 创建、发布和管理博客文章的完整指南
---

## 🎯 Hexo 博客完整使用指南

Hexo 是一个基于 Node.js 的静态博客框架，本博客就是使用 Hexo + GitHub Pages 搭建的。本文将详细介绍如何使用 Hexo 管理您的博客。

### 📂 项目结构

首先了解一下博客的目录结构：

```
my-blog/
├── source/
│   ├── _posts/          # 📝 所有博客文章都在这里
│   ├── _drafts/         # 📋 草稿文件夹
│   └── images/          # 🖼️ 图片资源
├── themes/              # 🎨 主题文件
├── public/              # 🌐 生成的静态网站
├── _config.yml          # ⚙️ 博客配置文件
└── package.json         # 📦 依赖管理
```

### ✍️ 创建新文章

#### 方法一：使用命令行（推荐）

```bash
# 进入博客目录
cd /home/zyh/my-blog

# 创建新文章
pnpm run new "我的新文章标题"
# 或者
npx hexo new "我的新文章标题"
```

#### 方法二：手动创建

1. 在 `source/_posts/` 目录下创建新的 `.md` 文件
2. 文件名建议使用英文，如：`my-new-post.md`

<!-- more -->

### 📄 文章格式

每篇文章都以 **Front Matter** 开头，用于设置文章属性：

```markdown
---
title: 文章标题
date: 2025-09-16 10:00:00
tags: [标签1, 标签2, 标签3]
categories: 分类名称
description: 文章简短描述
cover: /images/cover.jpg  # 可选：文章封面图
---

这里开始写正文内容...

<!-- more -->  # 这行之前的内容会显示在首页摘要中

继续写文章的详细内容...
```

### 🏷️ 标签和分类

**标签 (Tags)：** 用于标记文章的关键词
```yaml
tags: [Hexo, 博客, 教程, GitHub]
```

**分类 (Categories)：** 用于文章的分类管理
```yaml
categories: 技术  # 单个分类
# 或
categories: [技术, 前端]  # 多级分类
```

### 🚀 发布流程

#### 完整的发布步骤：

```bash
# 1. 进入博客目录
cd /home/zyh/my-blog

# 2. 创建新文章
pnpm run new "文章标题"

# 3. 编辑文章（使用您喜欢的编辑器）
# 编辑 source/_posts/文章标题.md

# 4. 本地预览（可选）
pnpm run server
# 访问 http://localhost:4000 预览

# 5. 生成静态文件
pnpm run build

# 6. 提交到 Git
git add .
git commit -m "发布新文章：文章标题"
git push

# 7. 自动部署
# GitHub Actions 会自动构建并部署到 GitHub Pages
```

### 💻 本地开发

#### 启动本地服务器

```bash
pnpm run server
# 或
npx hexo server
```

访问 `http://localhost:4000` 即可在本地预览博客。

#### 清理缓存

如果遇到问题，可以清理缓存：

```bash
pnpm run clean
# 或
npx hexo clean
```

### 📝 写作技巧

#### 1. Markdown 语法

Hexo 支持完整的 Markdown 语法：

```markdown
# 一级标题
## 二级标题
### 三级标题

**粗体文本**
*斜体文本*
`代码`

- 无序列表项
- 另一个列表项

1. 有序列表项
2. 另一个有序列表项

[链接文本](https://example.com)
![图片描述](/images/picture.jpg)
```

#### 2. 代码块

````markdown
```javascript
function hello() {
    console.log("Hello, World!");
}
```
````

#### 3. 插入图片

```markdown
![图片描述](/zyh.github.io/images/picture.jpg)
```

> 注意：图片路径要包含 `/zyh.github.io/` 前缀

### 🛠️ 常用命令总结

| 命令 | 作用 | 说明 |
|------|------|------|
| `pnpm run new "标题"` | 创建新文章 | 在 _posts 目录生成新文件 |
| `pnpm run server` | 本地预览 | 启动开发服务器 |
| `pnpm run build` | 生成静态文件 | 生成 public 目录 |
| `pnpm run clean` | 清理缓存 | 清除 public 和缓存 |
| `git add . && git commit -m "消息" && git push` | 发布更新 | 推送到 GitHub 触发自动部署 |

### 📋 草稿管理

#### 创建草稿

```bash
npx hexo new draft "草稿标题"
```

草稿保存在 `source/_drafts/` 目录中，不会在网站中显示。

#### 发布草稿

```bash
npx hexo publish "草稿标题"
```

### 🎨 自定义配置

#### 修改网站信息

编辑 `_config.yml` 文件：

```yaml
# 网站信息
title: 您的博客标题
subtitle: 副标题
description: 博客描述
author: 您的名字
language: zh-CN

# URL 配置
url: https://ly-zhang-yi-hao.github.io/zyh.github.io
root: /zyh.github.io/
```

### 🔧 故障排除

#### 常见问题：

1. **样式丢失：** 检查 `_config.yml` 中的 `url` 和 `root` 配置
2. **图片不显示：** 确保图片路径包含正确的前缀
3. **部署失败：** 查看 GitHub Actions 的构建日志
4. **本地预览异常：** 运行 `pnpm run clean` 清理缓存

### 📱 移动端写作

您也可以通过以下方式在移动设备上管理博客：

1. **GitHub 网页版：** 直接在 GitHub 网站编辑文件
2. **Git 客户端：** 使用手机上的 Git 应用
3. **在线编辑器：** 通过 GitHub Codespaces

### 🎉 总结

现在您已经掌握了 Hexo 博客的完整使用方法：

- ✅ 创建和编辑文章
- ✅ 使用标签和分类组织内容
- ✅ 本地预览和调试
- ✅ 发布到 GitHub Pages
- ✅ 日常维护和管理

开始您的博客写作之旅吧！每次提交代码到 GitHub，您的博客就会自动更新。