# Markdown執筆環境

このディレクトリには、Markdown執筆に特化したGitHub Codespaces環境の設定が含まれています。

## ファイル構成

- `devcontainer.json` - メイン設定（Ubuntu 22.04ベース）
- `devcontainer-alpine.json` - Alpine軽量版設定
- `devcontainer-minimal.json` - Alpine最小限設定
- `Dockerfile` - Alpineカスタムコンテナイメージ定義
- `Dockerfile.ultra-light` - Alpine超軽量版定義

## 使用方法

### デフォルト設定（Ubuntu）を使用する場合
現在の設定がそのまま使用されます。Ubuntu 22.04ベースで、一般的なコマンドが利用可能です。

### Alpine軽量版を使用する場合
起動速度を優先したい場合：
1. `devcontainer.json` を `devcontainer-ubuntu.json` にリネーム
2. `devcontainer-alpine.json` を `devcontainer.json` にリネーム
3. Codespaceを再構築

### Alpine最小限版を使用する場合
最軽量で起動したい場合：
1. `devcontainer.json` を `devcontainer-ubuntu.json` にリネーム
2. `devcontainer-minimal.json` を `devcontainer.json` にリネーム
3. Codespaceを再構築

## インストールされるツール

### Ubuntu版（デフォルト）
- git
- pandoc
- curl
- ca-certificates
- GitHub CLI (gh)
- その他Ubuntu標準ツール（bash, apt, など）

### Alpine版
- git
- pandoc
- curl
- ca-certificates
- タイムゾーン設定（Asia/Tokyo）

### Alpine最小限版
- git
- pandoc

## VS Code拡張機能

### Ubuntu版（デフォルト）
- Markdown All in One
- markdownlint
- GitHub Actions
- GitHub Pull Requests

### Alpine版
- Markdown All in One

### Alpine最小限版
- Markdown All in One
- markdownlint

## 選択の指針

### Ubuntu版を選ぶべき場合
- 豊富なコマンドやツールが必要
- 開発作業が多い
- 安定性を重視

### Alpine版を選ぶべき場合
- 起動速度を重視
- 軽量性を求める
- 基本的なMarkdown執筆のみ

## パフォーマンス特性

### Ubuntu版
- 起動時間：2-4分（初回）、1-2分（2回目以降）
- メモリ使用量：やや多い
- 利用可能コマンド：豊富（apt、bash、標準Linuxツール群）

### Alpine版
- 起動時間：1-3分（初回）、30秒-1分（2回目以降）
- メモリ使用量：少ない
- 利用可能コマンド：限定的（apk、ash、基本ツールのみ）

## カスタマイズ

必要に応じて以下をカスタマイズできます：

- Ubuntu版：`postCreateCommand`でツールを追加/削除
- Alpine版：`Dockerfile`または`postCreateCommand`でツールを追加/削除
- `devcontainer.json`でVS Code拡張機能を追加/削除
- 設定値の調整

## トラブルシューティング

### よくある問題
- **Alpine版でコマンドが見つからない**：Ubuntuでは標準のコマンドがAlpineでは利用できない場合があります
- **パッケージマネージャーの違い**：Ubuntu = `apt`、Alpine = `apk`
- **シェルの違い**：Ubuntu = `bash`、Alpine = `ash`
