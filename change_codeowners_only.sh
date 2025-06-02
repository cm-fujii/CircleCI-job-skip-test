#!/bin/bash

# CODEOWNERSファイルのみが変更されているか？　を確認するスクリプト

# 変更されたファイルを取得
changed_files=$(git diff --name-only "origin/main" "HEAD")

# CODEOWNERSファイルのみが変更されているかチェック
if [[ "$changed_files" == ".github/CODEOWNERS" ]]; then
    echo "Only CODEOWNERS file changed"
    exit 1
fi

echo "Not only CODEOWNERS file changed"
exit 0

