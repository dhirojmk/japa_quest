import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'alphabet_controller/hiragana.dart';
import 'alphabet_controller/katakana.dart';

void main() {
  runApp(HiraganaChartApp());
}

class HiraganaChartApp extends StatelessWidget {
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
    final controller = LiquidController();
    int currentPage = 0;
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



