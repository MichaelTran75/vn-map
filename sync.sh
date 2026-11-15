#!/bin/sh
# Chép bản đồ trên máy vào index.html (bản GitHub Pages phục vụ).
set -e
cd "$(dirname "$0")"
cp "../Single VN map.html" index.html
