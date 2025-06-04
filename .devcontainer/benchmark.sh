#!/bin/bash
# Codespaces構築時間ベンチマーク

echo "=== Codespaces構築時間ベンチマーク ==="
echo "測定開始時刻: $(date)"
echo ""

# 利用可能な設定を表示
echo "=== 利用可能な軽量化設定 ==="
echo "1. devcontainer.json (現在) - 事前ビルド済みイメージ + 最小拡張"
echo "2. devcontainer-minimal.json - 基本的な軽量化"
echo "3. devcontainer-ultra-light.json - 究極の軽量化（拡張なし）"
echo ""

echo "=== 現在の設定での起動速度要素 ==="
echo "✓ Alpine Linuxベース（軽量OS）"
echo "✓ 事前ビルド済みイメージ使用"
echo "✓ 最小限の拡張機能"
echo "✓ 簡素化されたpostCreateCommand"
echo ""

echo "=== 速度改善のポイント ==="
echo "・VS Code Server起動: 固定時間（30-60秒）"
echo "・拡張機能インストール: 現在1個のみ（10-20秒）"
echo "・Alpine設定: 5-10秒"
echo "・ネットワーク遅延: 地域により変動"
echo ""

echo "=== 超軽量版への切り替え方法 ==="
echo "1. さらなる高速化を希望する場合："
echo "   mv devcontainer.json devcontainer-standard.json"
echo "   mv devcontainer-ultra-light.json devcontainer.json"
echo "   # そしてCodespacesをrebuild"
echo ""
echo "2. 元に戻す場合："
echo "   mv devcontainer.json devcontainer-ultra-light.json"
echo "   mv devcontainer-standard.json devcontainer.json"
echo ""

echo "=== 実際の起動時間測定 ==="
echo "以下のコマンドでrebuild時間を測定できます："
echo "time コマンドは使えませんが、GitHubのCodespaces UIで"
echo "rebuild開始から\"準備完了\"まで の時間を測定してください"
echo ""

echo "測定完了時刻: $(date)"
