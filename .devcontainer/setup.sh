#!/bin/bash
set -e

echo "=== Codespaces セットアップ開始 ==="

# 基本ツールのインストール
echo "基本ツールをインストール中..."
sudo apt-get update
sudo apt-get install -y git pandoc curl ca-certificates

# GitHub CLI のインストール
echo "GitHub CLI をインストール中..."
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt-get update
sudo apt-get install -y gh

# Git の基本設定
echo "Git 設定を行っています..."
git config --global init.defaultBranch main

echo "=== セットアップ完了 ==="
echo "利用可能なツール:"
echo "- Git: $(git --version)"
echo "- Pandoc: $(pandoc --version | head -n1)"
echo "- GitHub CLI: $(gh --version | head -n1)"
