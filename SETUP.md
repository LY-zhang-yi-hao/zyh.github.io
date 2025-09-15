# 🚀 博客快速设置指南

## ⚡ 三步启动博客

### 第一步：创建 GitHub 仓库

1. **访问** https://github.com/new
2. **仓库名**: `zyh.github.io` (⚠️ 必须是这个格式)
3. **设置**: 选择 Public (公开)
4. **创建**: 点击 "Create repository"

### 第二步：推送代码

在博客目录执行：

```bash
# 推送代码到 GitHub
git push -u origin main
```

### 第三步：启用 GitHub Pages

1. 推送完成后，访问仓库设置页面
2. 找到 "Pages" 设置
3. Source 选择：`Deploy from a branch`
4. Branch 选择：`gh-pages`
5. 点击 "Save"

## 🌐 访问博客

等待 3-5 分钟后，访问：**https://zyh.github.io**

## 🛠️ 日常使用

### 本地开发

```bash
# 一键启动（推荐）
./deploy.sh

# 或手动启动
pnpm run server
```

### 写新文章

```bash
# 创建文章
hexo new "文章标题"

# 编辑文章（使用任意编辑器）
code source/_posts/文章标题.md
```

### 发布文章

```bash
# 提交到 GitHub（自动部署）
git add .
git commit -m "添加新文章"
git push origin main
```

## 📞 需要帮助？

查看完整文档：[README.md](./README.md)

---
✨ **恭喜！您的博客已配置完成！**