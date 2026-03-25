# Deployment Checklist for Debate Bot

## ✅ Pre-Build Setup

### For iOS:
- [ ] Create Apple Developer Account (https://developer.apple.com)
  - [ ] Pay $99/year subscription fee
  - [ ] Verify email
  - [ ] Create team ID
- [ ] Create Expo Account (https://expo.dev)
  - [ ] Sign up with email
  - [ ] Verify email
  - [ ] Create password
- [ ] Add payment method to Apple Developer account
- [ ] Accept developer agreements

### For Android:
- [ ] Create Google Play Developer Account (https://play.google.com/console)
  - [ ] Pay $25 (one-time fee)
  - [ ] Verify email
  - [ ] Create developer account
- [ ] Create Expo Account (https://expo.dev) - same as iOS

### For Both:
- [ ] Test app on web: `npm run web`
- [ ] Verify all three screens work (Home → Debate → Score → Back)
- [ ] Test mock AI responses work

---

## 🚀 Build Process

### Step 1: Prepare Project
```bash
cd /Users/bhoomiga/Desktop/Debatebot

# Install dependencies
npm install

# Update app.json with your details
```

### Step 2: Authentication
```bash
# Login to Expo (use your Expo account credentials)
npx eas login
```

### Step 3: Build for iOS
```bash
# Option A: Build directly
npm run build:ios

# OR use the build script
./build.sh
# Select option 1
```

**What happens:**
- Build starts on Expo cloud servers
- You'll get a build ID
- Build takes ~15-30 minutes
- Email notification when complete
- Download link provided

### Step 4: Build for Android
```bash
npm run build:android
```

**What happens:**
- Android APK built on Expo servers
- Takes ~10-20 minutes
- Download APK file directly
- Ready to install on any Android phone

### Step 5: Download Files
- **iOS**: .ipa file for iPhone/iPad
- **Android**: .apk file for Android

---

## 📱 Installation

### iOS Installation

**Option A: Direct (requires Apple Developer account)**
1. Download .ipa file
2. Connect iPhone to Mac with Xcode
3. Drag .ipa file into Xcode window
4. Select your device and install

**Option B: TestFlight (easier, no development needed)**
1. Download .ipa file
2. Go to https://testflight.apple.com
3. Sign in with Apple ID
4. Follow on-screen steps to install beta
5. App available in App Store for testing

**Option C: App Store (production)**
1. Submit .ipa to App Store for review
2. Apple reviews and approves (3-5 days)
3. Released to public
4. Users download from App Store

### Android Installation

**Option A: Direct APK**
1. Download .apk file
2. Email to yourself or transfer to phone
3. On phone: Settings → Security → Unknown Sources (allow)
4. Open file manager and tap .apk
5. Follow install prompts

**Option B: Google Play Store**
1. Go to https://play.google.com/console
2. Create app listing
3. Upload .apk file
4. Fill in app details (description, screenshots, etc.)
5. Submit for review (typically 2-4 hours)
6. Once approved, available for download

---

## 📊 Build Status Monitoring

### Real-Time Status:
1. Go to https://dashboard.expo.dev
2. Log in with your Expo account
3. Select "Builds" tab
4. View build progress
5. Download when ready

### Email Notifications:
- Expo sends email when build starts
- Another email when build completes
- Include download links

---

## 🐛 Troubleshooting

### Build Fails with "Account required"
```bash
# Solution: Login to Expo
npx eas logout
npx eas login
# Enter credentials
```

### iOS Build Fails
- Check Apple Developer certificate is valid
- Verify team ID in app.json
- Try building again

### Android Build Fails  
- Ensure package name is unique (com.yourname.debatebot)
- Check build.gradle configurations
- Try building again

### App Crashes on Phone
- Check device iOS/Android version compatibility
- Review console errors from `npm run web`
- Rebuild with latest dependencies: `npm install`

---

## 📋 Final Checklist Before Release

- [ ] All three screens tested and working
- [ ] No console errors in web version
- [ ] Mock AI responses display correctly
- [ ] Scoring logic functions properly
- [ ] Messages save correctly during debate
- [ ] App transitions smoothly between screens
- [ ] UI looks good and is readable
- [ ] All buttons are clickable
- [ ] No memory leaks or crashes observed

---

## 📱 Release Timeline

### Week 1:
- [ ] Prepare accounts (Apple/Google/Expo)
- [ ] Test app thoroughly
- [ ] Build for iOS and Android

### Week 2:
- [ ] Install on test devices
- [ ] Fix any bugs found
- [ ] Get feedback from testers

### Week 3:
- [ ] Submit to App Store (iOS)
- [ ] Submit to Google Play (Android)

### Week 4:
- [ ] Monitor reviews and ratings
- [ ] Fix bugs and release updates
- [ ] Plan version 2 features

---

## 🎉 After Release

### Monitor:
- App Store/Play Store reviews
- Crash reports
- User feedback
- Analytics (if enabled)

### Update:
- Fix bugs found post-release
- Add requested features
- Improve performance
- Update AI responses

---

## Support Resources

- **Expo Dashboard**: https://dashboard.expo.dev
- **Build Documentation**: https://docs.expo.dev/build
- **iOS Build Docs**: https://docs.expo.dev/build-reference/ios-builds/
- **Android Build Docs**: https://docs.expo.dev/build-reference/android-builds/
- **Apple Developer**: https://developer.apple.com
- **Google Play Console**: https://play.google.com/console

---

**Total Time: 3-4 weeks from setup to release**

Good luck! 🚀
