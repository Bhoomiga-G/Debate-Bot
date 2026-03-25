import React, { useState } from 'react';
import HomeScreen from './screens/HomeScreen';
import DebateScreen from './screens/DebateScreen';
import ScoreScreen from './screens/ScoreScreen';

type Screen = 'home' | 'debate' | 'score';

interface DebateParams {
  topic: string;
  userSide: string;
}

interface TranscriptParams extends DebateParams {
  transcript: string;
}

const App = () => {
  const [currentScreen, setCurrentScreen] = useState<Screen>('home');
  const [debateParams, setDebateParams] = useState<DebateParams | null>(null);
  const [transcriptParams, setTranscriptParams] = useState<TranscriptParams | null>(null);

  const handleStartDebate = (topic: string, userSide: string) => {
    setDebateParams({ topic, userSide });
    setCurrentScreen('debate');
  };

  const handleEndDebate = (transcript: string) => {
    if (debateParams) {
      setTranscriptParams({
        topic: debateParams.topic,
        userSide: debateParams.userSide,
        transcript,
      });
      setCurrentScreen('score');
    }
  };

  const handleNewDebate = () => {
    setCurrentScreen('home');
    setDebateParams(null);
    setTranscriptParams(null);
  };

  return (
    <>
      {currentScreen === 'home' && <HomeScreen onStartDebate={handleStartDebate} />}
      {currentScreen === 'debate' && debateParams && (
        <DebateScreen params={debateParams} onEndDebate={handleEndDebate} />
      )}
      {currentScreen === 'score' && transcriptParams && (
        <ScoreScreen params={transcriptParams} onNewDebate={handleNewDebate} />
      )}
    </>
  );
};

export default App;
