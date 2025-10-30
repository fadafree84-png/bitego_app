#!/bin/bash
# Simple script to build and sign APK locally (assumes key.properties present)
set -e
echo "Running flutter pub get..."
flutter pub get
echo "Building release APK..."
flutter build apk --release
echo "Done. APK located at build/app/outputs/flutter-apk/app-release.apk"
