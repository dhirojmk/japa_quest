import 'package:flutter/material.dart';
import 'alphabet_controller/hiragana.dart';
import 'alphabet_controller/katakana.dart';

void main() {
  runApp(const HiraganaChartApp());
}

class HiraganaChartApp extends StatelessWidget {
  const HiraganaChartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:
      AlphabetScreen(),
    );
  }
}

class AlphabetScreen extends StatelessWidget {
  const AlphabetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            children
                : [
              KatakanaChart(),
              HiraganaChart(), // Add the HiraganaChart as a page
            ],
          ),
        ],
      ),
    );
  }
}



