# zyh 的个人博客

[![部署状态](https://github.com/zyh/zyh.github.io/workflows/部署博客到%20GitHub%20Pages/badge.svg)](https://github.com/zyh/zyh.github.io/actions)

## 🌐 在线访问

**博客地址**: [https://zyh.github.io](https://zyh.github.io)

这是一个基于 Hexo + Typography 主题的个人博客，记录生活与技术。

## 🛠️ 技术栈

- **静态博客生成器**: [Hexo](https://hexo.io/)
- **主题**: [Typography](https://github.com/SumiMakito/hexo-theme-typography)
- **托管平台**: GitHub Pages
- **自动部署**: GitHub Actions
- **包管理器**: pnpm

## 📁 项目结构

```
my-blog/
├── .github/workflows/     # GitHub Actions 自动部署
├── source/_posts/         # 博客文章目录
├── themes/typography/     # 主题文件
├── _config.yml           # 博客主配置
├── package.json          # 项目依赖
└── README.md             # 说明文档
```

## 🚀 快速开始

### 环境要求

- Node.js 18+
- pnpm 或 npm

### 本地开发

1. **克隆仓库**
   ```bash
   git clone https://github.com/zyh/zyh.github.io.git
   cd zyh.github.io
   ```

2. **安装依赖**
   ```bash
   pnpm install
   ```

3. **启动本地服务器**
   ```bash
   pnpm run server
   ```

4. **访问本地预览**
   - 地址: http://localhost:4000

## ✍️ 写作指南

### 创建新文章

#### 方法一：命令行创建
```bash
hexo new "文章标题"
```

#### 方法二：手动创建
在 `source/_posts/` 目录下创建 `.md` 文件

### 文章格式

每篇文章都需要包含 Front Matter：

```yaml
---
title: 文章标题
date: 2025-09-15 20:30:00
tags: [标签1, 标签2]
categories: 分类名
description: 文章描述
---

文章内容使用 Markdown 语法编写...

<!-- more -->

这里是文章的详细内容...
```

### 重要说明

- **`<!-- more -->`**: 控制首页文章摘要的显示长度
- **tags**: 文章标签，支持多个
- **categories**: 文章分类，建议单一分类
- **description**: SEO 描述，可选

## 🎨 主题配置

主题配置文件：`themes/typography/_config.yml`

### 主要配置项

```yaml
# 站点标题
title_primary: "zyh 的个人博客"    # 大标题
title_secondary: "思考记录"        # 小标题

# 社交链接
github: zyh                        # GitHub 用户名
twitter: your_twitter              # Twitter 用户名
rss: atom.xml                      # RSS 地址

# 功能开关
showPageCount: true                # 显示页码
showCategories: true               # 显示分类
showTags: true                     # 显示标签

# 主题样式
themeStyle: light                  # light/dark
```

## 📤 发布流程

### 自动发布（推荐）

项目配置了 GitHub Actions 自动部署：

1. **编写文章** - 在 `source/_posts/` 创建 Markdown 文件
2. **本地预览** - `pnpm run server` 检查效果
3. **提交代码** - 
   ```bash
   git add .
   git commit -m "添加新文章：文章标题"
   git push origin main
   ```
4. **自动部署** - GitHub Actions 自动构建并发布

### 手动发布

如果需要手动发布：

```bash
# 生成静态文件
pnpm run build

# 部署到 GitHub Pages（需要配置 hexo-deployer-git）
pnpm run deploy
```

## 📝 常用命令

```bash
# 开发相关
pnpm run server          # 启动本地服务器
pnpm run build           # 生成静态文件
pnpm run clean           # 清理缓存

# 内容管理
hexo new post "文章标题"   # 创建新文章
hexo new page "页面名"     # 创建新页面
hexo new draft "草稿标题"  # 创建草稿
hexo publish "草稿标题"    # 发布草稿

# 部署相关
pnpm run deploy          # 手动部署
```

## 🗂️ 内容管理

### 文章管理

- **位置**: `source/_posts/`
- **格式**: Markdown (`.md`)
- **命名**: 建议使用英文或拼音，避免特殊字符

### 图片管理

1. **创建图片目录**
   ```bash
   mkdir -p source/images
   ```

2. **在文章中引用**
   ```markdown
   ![图片描述](/images/image-name.jpg)
   ```

### 草稿管理

```bash
# 创建草稿
hexo new draft "草稿标题"

# 草稿位置
source/_drafts/

# 发布草稿
hexo publish "草稿标题"
```

## 🎯 SEO 优化

### 1. 配置站点信息

编辑 `_config.yml`：

```yaml
title: zyh 的个人博客
subtitle: 记录生活与技术
description: 分享技术学习心得和生活感悟
keywords: 技术博客,个人博客,编程,生活
author: zyh
language: zh-CN
url: https://zyh.github.io
```

### 2. 文章 SEO

- 使用有意义的标题
- 添加合适的标签和分类
- 编写吸引人的描述
- 使用适当的内部链接

## 🚨 故障排除

### 常见问题

1. **模板渲染错误**
   ```bash
   # 确保安装了 Pug 渲染器
   pnpm install hexo-renderer-pug
   ```

2. **部署失败**
   ```bash
   # 清理缓存重试
   hexo clean
   hexo generate
   ```

3. **端口占用**
   ```bash
   # 使用其他端口
   hexo server -p 4001
   ```

### 获取帮助

- [Hexo 官方文档](https://hexo.io/docs/)
- [Typography 主题文档](https://github.com/SumiMakito/hexo-theme-typography)
- [GitHub Issues](https://github.com/zyh/zyh.github.io/issues)

## 📄 许可证

本博客内容采用 [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) 许可协议，代码部分采用 MIT 许可证。

## 🤝 贡献

欢迎提出建议和问题！

---

**最后更新**: 2025-09-15  
**博客地址**: [https://zyh.github.io](https://zyh.github.io)