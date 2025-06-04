# 軽量なAlpineベースイメージを使用
FROM mcr.microsoft.com/vscode/devcontainers/base:alpine-3.18

# Markdown執筆に必要な最小限のツールをインストール
RUN apk update && apk add --no-cache \
    bash \
    git \
    pandoc \
    curl \
    ca-certificates \
    && rm -rf /var/cache/apk/*

# タイムゾーンを設定（オプション）
RUN apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && echo "Asia/Tokyo" > /etc/timezone \
    && apk del tzdata

# gitの基本設定（プレースホルダー）
RUN git config --global init.defaultBranch main

# 作業ディレクトリを設定
WORKDIR /workspace

# 非rootユーザーで実行
USER vscode
