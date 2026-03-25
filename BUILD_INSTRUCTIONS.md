# Debate Bot - Build Instructions

## iOS and Android App Building Guide

This guide contains step-by-step instructions to build and deploy the Debate Bot app to iOS and Android devices.

---

## Option 1: Using Expo Application Services (EAS) - RECOMMENDED

### Prerequisites
- Expo account (sign up at https://expo.dev)
- Apple Developer Account (for iOS)
- Google Play Developer Account (for Android)

### For iOS

#### Step 1: Create an Expo Account
1. Go to https://expo.dev and sign up
2. Verify your email

#### Step 2: Configure App
Edit `app.json`:
```json
{
  "expo": {
    "name": "Debate Bot",
    "slug": "debatebot",
    "version": "1.0.0",
    "owner": "your_expo_username"
  }
}
```

#### Step 3: Login to EAS
```bash
npx eas login
```
Enter your Expo credentials (email/username and password)

#### Step 4: Build for iOS
```bash
npx eas build --platform ios
```

This will:
- Build your app in the cloud
- Create an .ipa file
- Provide a download link
- Email you when ready

#### Step 5: Install on iPhone
Option A - With Apple Developer Account:
1. Download the .ipa file from the build link
2. Use Xcode or Apple Configurator to install
3. Connect iPhone and drag the .ipa file

Option B - Without Developer Account (TestFlight):
1. Go to https://testflight.apple.com
2. Sign in with Apple ID
3. Follow on-screen instructions to install the beta version

---

### For Android

#### Step 1: Build APK
```bash
npx eas build --platform android --type apk
```

#### Step 2: Download APK
- Wait for build to complete
- Download the .apk file from the provided link

#### Step 3: Install on Android Phone
1. Download the .apk file to your Android device (or email it to yourself)
2. Open file manager
3. Tap the .apk file
4. Allow installation from unknown sources if prompted
5. Tap "Install"
6. Open the Debate Bot app

---

## Option 2: Local Development with Xcode (iOS Only)

### Prerequisites
- macOS with Xcode installed
- Xcode Command Line Tools

### Steps

#### 1. Install Dependencies
```bash
cd /Users/bhoomiga/Desktop/Debatebot
npm install
```

#### 2. Generate iOS Project
```bash
npx expo prebuild --platform ios
```

#### 3. Open in Xcode
```bash
xed ios
```

#### 4. Build and Run
In Xcode:
1. Select your target device/simulator from the dropdown
2. Click the Build and Run button (▶)
3. Wait for compilation
4. App will launch on device/simulator

---

## Option 3: Web Deployment

The app is already running on web at http://localhost:8083

To deploy to production:
1. Build for web: `npx expo export --platform web`
2. Deploy the output folder to services like:
   - Vercel
   - Netlify
   - GitHub Pages
   - Firebase Hosting

---

## Quick Start for Mobile (EAS Method)

```bash
# 1. Create Expo Account at https://expo.dev

# 2. Login
npx eas login

# 3. Build for iOS
npx eas build --platform ios

# 4. Build for Android APK
npx eas build --platform android --type apk

# 5. Download files from provided links and install on devices
```

---

## Troubleshooting

### Issue: Login fails
- Verify email/password is correct
- Make sure account is verified
- Try `eas logout` then `eas login` again

### Issue: Build takes too long
- Builds typically take 10-30 minutes
- Check build status at https://dashboard.expo.dev

### Issue: Installation fails on iPhone
- Ensure app bundle ID matches your account
- Check Apple Developer certificate is valid
- Use TestFlight for easier installation

### Issue: APK won't install on Android
- Enable "Unknown sources" in phone settings
- Check file isn't corrupted by redownloading
- Try installing from Google Play Store instead

---

## File Locations

- Main app: `App.tsx`
- Screens: `screens/` folder
- Configuration: `app.json`, `eas.json`
- Package info: `package.json`

---

## Support

For more information:
- Expo Docs: https://docs.expo.dev
- EAS Build: https://docs.expo.dev/build/introduction/
- React Native: https://reactnative.dev
