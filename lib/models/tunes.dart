import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  const TuneModel({required this.color, required this.sound});
  final Color color;
  final String sound;
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
