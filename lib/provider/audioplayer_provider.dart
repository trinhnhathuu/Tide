import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerProvider extends ChangeNotifier {
  AudioPlayer _player = AudioPlayer();
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  bool _isPlaying = false;

  Duration get duration => _duration;
  Duration get position => _position;
  bool get isPlaying => _isPlaying;

  Future<void> play(String url) async {
    await _player.setUrl(url);
    await _player.play();
    _isPlaying = true;
    _duration = _player.duration!;
    notifyListeners();
  }

  Future<void> pause() async {
    await _player.pause();
    _isPlaying = false;
    notifyListeners();
  }

  void updatePosition(Duration position) {
    _position = position;
    notifyListeners();
  }

  void dispose() {
    _player.dispose();
    super.dispose();
  }
}
