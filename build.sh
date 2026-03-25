#!/bin/bash

# Debate Bot - Quick Build Script for iOS & Android
# This script helps you build the Debate Bot app for both platforms

echo "🎤 Debate Bot - Build Tool"
echo "=========================="
echo ""
echo "Select what you want to do:"
echo "1) Build for iOS (iPhone/iPad)"
echo "2) Build for Android (APK download)"
echo "3) Build for both platforms"
echo "4) Install dependencies only"
echo ""

read -p "Enter your choice (1-4): " choice

case $choice in
  1)
    echo "Building for iOS..."
    echo "Prerequisites: Expo account (https://expo.dev), Apple Developer account"
    echo ""
    echo "Step 1: Ensure you're logged in"
    npx eas login
    echo ""
    echo "Step 2: Building iOS app (this will take 10-30 minutes)..."
    npm run build:ios
    ;;
  2)
    echo "Building for Android APK..."
    echo "Prerequisites: Expo account (https://expo.dev)"
    echo ""
    echo "Step 1: Ensure you're logged in"
    npx eas login
    echo ""
    echo "Step 2: Building Android app..."
    npm run build:android
    ;;
  3)
    echo "Building for both iOS and Android..."
    echo "Prerequisites: Expo account (https://expo.dev), Apple Developer account for iOS"
    echo ""
    echo "Step 1: Ensure you're logged in"
    npx eas login
    echo ""
    echo "Step 2: Building both platforms..."
    npm run build:preview
    ;;
  4)
    echo "Installing dependencies..."
    npm install
    echo "✅ Dependencies installed!"
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac

echo ""
echo "✅ Build script complete!"
echo ""
echo "Next steps:"
echo "- Check https://dashboard.expo.dev for build status"
echo "- Download the .ipa (iOS) or .apk (Android) file"
echo "- Install on your device"
echo ""
echo "For detailed instructions, see BUILD_INSTRUCTIONS.md"
