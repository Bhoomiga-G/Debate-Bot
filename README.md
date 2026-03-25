# 🎤 Debate Bot

A cross-platform React Native app where you debate with an intelligent AI opponent on any topic. Get scored on logic, evidence, and persuasion.

## Features

✅ **Select Topics & Sides** - Enter any debate topic and choose your position  
✅ **Live AI Debates** - Chat with AI that argues the opposite side convincingly  
✅ **Smart Scoring** - Get scored on logic (reasoning), evidence (facts/examples), and persuasion (clarity/delivery)  
✅ **Beautiful UI** - Modern, responsive design with smooth animations  
✅ **Cross-Platform** - Works on iOS, Android, and Web  
✅ **Mock AI for Testing** - Ready-to-use debate responses without needing API keys  

## Quick Start

### 1. Install Dependencies
```bash
npm install
```

### 2. Run on Web (Laptop)
```bash
npm run web
```
Opens at http://localhost:8083

### 3. Run on iOS Simulator
```bash
npm run ios
```
(macOS with Xcode required)

### 4. Run on Android Emulator
```bash
npm run android
```
(Android Studio and emulator required)

## Building for Distribution

### iOS (iPhone/iPad)

See [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md) for detailed steps.

**Quick Command:**
```bash
npm run build:ios
```

Requires:
- Expo account (free at https://expo.dev)
- Apple Developer account ($99/year)

### Android (APK for Google Play)

**Quick Command:**
```bash
npm run build:android
```

Results in a shareable .apk file that can be installed on any Android device.

## Project Structure

```
Debatebot/
├── App.tsx                 # Main app with navigation logic
├── screens/
│   ├── HomeScreen.tsx      # Topic/side selection
│   ├── DebateScreen.tsx    # Live debate chat interface
│   └── ScoreScreen.tsx     # Results and scoring
├── app.json                # Expo configuration
├── eas.json                # iOS/Android build config
├── package.json            # Dependencies
└── BUILD_INSTRUCTIONS.md   # Detailed build guide
```

## How to Use

1. **Start Debate** - Enter a topic (e.g., "Climate Change") and your side ("For" or "Against")
2. **Make Arguments** - Type your position and send
3. **Respond to AI** - AI presents counter-arguments that you can rebut
4. **End & Score** - Tap "End Debate & Score" to see your results
5. **New Debate** - Start another debate on a different topic

## Scoring Explanation

- **Logic (1-10):** How well-reasoned are your arguments? Free of logical fallacies?
- **Evidence (1-10):** Did you cite facts, data, or real-world examples?
- **Persuasion (1-10):** Was your delivery confident, clear, and compelling?

## Environment Setup (for Real AI)

To use actual OpenAI API responses instead of mock data:

1. Get API key from https://platform.openai.com/api-keys
2. Update `screens/DebateScreen.tsx` and `screens/ScoreScreen.tsx`:
```typescript
const openai = new OpenAI({
  apiKey: 'your-api-key-here'
});
```

## Technology Stack

- **React Native** - Cross-platform mobile framework
- **Expo** - Development platform and cloud builds
- **TypeScript** - Type-safe development
- **React Navigation** - Screen navigation
- **React Native Web** - Web support
- **OpenAI API** - (Optional) AI responses

## Deployment Options

| Platform | Method | Cost | Time |
|----------|--------|------|------|
| Web | Vercel/Netlify | Free | Minutes |
| iOS | App Store | $99/year | 1-2 days (review) |
| Android | Google Play | $25 (one-time) | Hours to days (review) |
| Mobile Testing | Expo Go app | Free | Instantly |

## Troubleshooting

**Issue: Blank white screen**
- Hard refresh browser (Cmd+Shift+R on Mac)
- Check browser console (F12) for errors
- Restart dev server

**Issue: Can't build for iOS**
- Make sure Expo account is created and verified
- Run `eas login` to authenticate
- Check [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md)

**Issue: AI not responding**
- Mock responses are built-in (no API key needed for testing)
- To use real OpenAI: set API key as shown above

## Next Steps

1. ✅ Test on web at http://localhost:8083
2. ✅ Build for Android: `npm run build:android`
3. ✅ Build for iOS: `npm run build:ios`
4. ✅ Share .apk with Android users
5. ✅ Submit to App Store/Google Play

## Resources

- [Expo Documentation](https://docs.expo.dev)
- [React Native Docs](https://reactnative.dev)
- [EAS Build Guide](https://docs.expo.dev/build/introduction/)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)

## License

MIT - Feel free to use and modify

---

**Happy Debating! 🎤**