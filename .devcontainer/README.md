# 軽量Markdown執筆環境

このディレクトリには、Markdown執筆に特化した軽量なGitHub Codespaces環境の設定が含まれています。

## ファイル構成

- `devcontainer.json` - メイン設定（Dockerfileベース）
- `Dockerfile` - カスタムコンテナイメージ定義
- `devcontainer-minimal.json` - 超軽量設定（image指定ベース）

## 使用方法

### デフォルト設定を使用する場合
現在の設定がそのまま使用されます。

### 超軽量設定を使用する場合
1. `devcontainer.json` を `devcontainer-full.json` にリネーム
2. `devcontainer-minimal.json` を `devcontainer.json` にリネーム
3. Codespaceを再構築

## インストールされるツール

### Dockerfileベース版
- git
- pandoc
- curl
- ca-certificates
- タイムゾーン設定（Asia/Tokyo）

### 最小限版（postCreateCommand）
- git
- pandoc

## VS Code拡張機能

### フル版
- Markdown All in One
- GitHub Pull Requests
- markdownlint
- Markdown Preview GitHub Styles

### 最小限版
- Markdown All in One
- markdownlint

## パフォーマンス最適化

1. **Alpine Linuxベース** - 軽量なベースイメージ
2. **最小限のツール** - Markdown執筆に必要なツールのみ
3. **キャッシュ最適化** - apkキャッシュのクリーンアップ
4. **非rootユーザー** - セキュリティとパフォーマンスの向上

## カスタマイズ

必要に応じて以下をカスタマイズできます：

- `Dockerfile`でツールを追加/削除
- `devcontainer.json`でVS Code拡張機能を追加/削除
- 設定値の調整

## 予想される起動時間

- 初回起動：1-3分（イメージのプルとビルド）
- 2回目以降：30秒以下（キャッシュ使用時）
