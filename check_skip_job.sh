#!/bin/bash

# pull_request_template.md のみが変更されているか？　を確認するスクリプト

# 変更されたファイルを取得
changed_files=$(git diff --name-only "origin/main" "HEAD")

if [[ "$changed_files" == ".github/pull_request_template.md" ]]; then
    echo "Only pull_request_template.md has been changed."
    exit 0
fi

echo "Changes detected in files other than pull_request_template.md."
exit 1
