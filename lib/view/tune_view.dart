import 'package:flutter/material.dart';
import 'package:tune_app/components/tune_item.dart';
import 'package:tune_app/models/tunes.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  // ignore: non_constant_identifier_names
  final List<TuneModel> Tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.green, sound: 'note4.wav'),
    TuneModel(color: Colors.greenAccent, sound: 'note5.wav'),
    TuneModel(color: Colors.blue, sound: 'note6.wav'),
    TuneModel(color: Colors.purple, sound: 'note7.wav')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff253238),
        elevation: 0,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Column(
        children: Tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
