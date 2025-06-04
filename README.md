# GenAI-Prompts

xtetsuji が活用している生成AI用のプロンプトです。

---

## prompts/ 以下のプロンプト一覧

- [avoid-hallucination.md](prompts/avoid-hallucination.md)
    - 生成AIのハルシネーション（幻覚）を防止するための汎用プロンプト。不確かな情報に対して「わかりません」と明言させ、事実と推測を区別させます。
- [book-review.md](prompts/book-review.md)
    - 書籍名やISBN、ASIN、URLなどから各種書評サイトのレビューを収集・要約し、総評をまとめるプロンプト。
- [calendar-url.md](prompts/calendar-url.md)
    - イベントや発売日などの日程情報を含むURLからGoogleカレンダー登録用リンクを自動生成するプロンプト。
- [compare-price.md](prompts/compare-price.md)
    - Amazon.co.jpの商品URLや商品名・型番から、楽天市場・ヨドバシカメラ・Yahoo!ショッピングの同一/類似商品の価格・ポイント・在庫などを比較するプロンプト。
- [manage-event.md](prompts/manage-event.md)
    - イベント管理に関するタスクを効率化するプロンプト。スケジュール作成、参加者リスト管理、タスク割り当てなどをサポートします。
- [summarize-url.md](prompts/summarize-url.md)
    - URLを貼るだけで記事内容を要約し、はてなブックマーク等の反応もまとめてくれるプロンプト。

---

## 開発環境

このリポジトリは軽量なGitHub Codespaces環境でMarkdown執筆に最適化されています。

### 特徴
- **Alpine Linuxベース** で高速起動
- **Markdown執筆専用** の最小限ツールセット
- **軽量化** により数十秒での起動を実現

### 使用ツール
- Git
- Pandoc（文書変換）
- VS Code拡張機能（Markdown All in One、markdownlintなど）

詳細は [.devcontainer/README.md](.devcontainer/README.md) をご覧ください。

---

各プロンプトの詳細は、該当のMarkdownファイルをご覧ください。
