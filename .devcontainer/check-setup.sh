#!/bin/bash
# Codespaces構築完了確認スクリプト

echo "=== Codespaces環境確認 ==="
echo "構築完了時刻: $(date)"
echo ""

echo "=== インストール済みツール ==="
echo "Git: $(git --version 2>/dev/null || echo 'Not installed')"
echo "Pandoc: $(pandoc --version 2>/dev/null | head -n1 || echo 'Not installed')"
echo "Curl: $(curl --version 2>/dev/null | head -n1 || echo 'Not installed')"
echo ""

echo "=== VS Code拡張機能 ==="
code --list-extensions 2>/dev/null | grep -E "(markdown|github)" || echo "拡張機能情報を取得中..."
echo ""

echo "=== システム情報 ==="
echo "OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)"
echo "Architecture: $(uname -m)"
echo "Memory: $(free -h | grep Mem | awk '{print $2}')"
echo "Disk: $(df -h / | tail -1 | awk '{print $2 " (使用率: " $5 ")"}')"
echo ""

echo "=== 環境準備完了 ==="
echo "Markdown執筆環境が利用可能です！"
