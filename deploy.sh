#!/bin/bash

echo "🚀 zyh 博客一键部署脚本"
echo "=========================="

# 检查是否在正确的目录
if [ ! -f "_config.yml" ]; then
    echo "❌ 错误：请在博客根目录运行此脚本"
    exit 1
fi

echo "📦 1. 安装依赖..."
pnpm install

echo "🧹 2. 清理缓存..."
hexo clean

echo "🔧 3. 生成静态文件..."
hexo generate

echo "👀 4. 启动本地预览服务器..."
echo "   访问地址: http://localhost:4000"
echo "   按 Ctrl+C 停止服务器"
echo ""

hexo server