import 'package:flutter/cupertino.dart';
import 'package:just_audio/just_audio.dart';

class AudioService {
  static AudioPlayer _audioPlayer = AudioPlayer();

  static void playAudio(String assetPath) async {
    await _audioPlayer.stop();
    await _audioPlayer.setAsset(assetPath);
    await _audioPlayer.play();
  }
}
