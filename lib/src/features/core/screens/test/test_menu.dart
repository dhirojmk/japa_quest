import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../constants/text_strings.dart';

void main() {
  runApp(JLPTTestApp());
}

class JLPTTestApp extends StatefulWidget {
  @override
  State<JLPTTestApp> createState() => _JLPTTestAppState();
}

class _JLPTTestAppState extends State<JLPTTestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/Test BackGround.jpg'),
                  // Replace with your background image
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
            // Content with padding
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      tPracticeTitle,
                      style:
                          txtTheme.headlineSmall?.copyWith(color: Colors.black),
                    ),
                  ),
                  GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(8.0),
                    childAspectRatio: 3 / 2,
                    physics: NeverScrollableScrollPhysics(),
                    // Disable GridView's own scrolling
                    shrinkWrap: true,
                    // Shrink GridView to fit content
                    children: [
                      TestCard(
                          icon: Iconsax.book_copy,
                          label: 'Vocabulary',
                          textStyle: txtTheme.titleMedium),
                      TestCard(
                          icon: Iconsax.grammerly_copy,
                          label: 'Grammar',
                          textStyle: txtTheme.titleMedium),
                      TestCard(
                          icon: Iconsax.book_square_copy,
                          label: 'Reading',
                          textStyle: txtTheme.titleMedium),
                      TestCard(
                          icon: Iconsax.audio_square_copy,
                          label: 'Listening',
                          textStyle: txtTheme.titleMedium),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      tTestTitle,
                      style:
                          txtTheme.headlineSmall?.copyWith(color: Colors.black),
                    ),
                  ),
                  GridView.count(
                    crossAxisCount: 3,
                    padding: EdgeInsets.all(8.0),
                    childAspectRatio: 1,
                    physics: NeverScrollableScrollPhysics(),
                    // Disable GridView's own scrolling
                    shrinkWrap: true,
                    // Shrink GridView to fit content
                    children: [
                      BottomCard(
                          icon: Iconsax.task_square_copy,
                          label: 'Mock Tests',
                          textStyle: txtTheme.titleMedium),
                      BottomCard(
                          icon: Iconsax.book_1_copy,
                          label: 'Learn',
                          textStyle: txtTheme.titleMedium),
                      BottomCard(
                          icon: Iconsax.note_text_copy,
                          label: 'Review',
                          textStyle: txtTheme.titleMedium),
                      BottomCard(
                          icon: Iconsax.settings_copy,
                          label: 'Settings',
                          textStyle: txtTheme.titleMedium),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TestCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final TextStyle? textStyle;

  TestCard({required this.icon, required this.label, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E5F5),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.black),
          SizedBox(height: 10),
          Text(
            label,
            style: textStyle?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class BottomCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final TextStyle? textStyle;

  BottomCard({required this.icon, required this.label, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E5F5),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 35, color: Colors.black),
          const SizedBox(height: 5),
          Text(
            label,
            style: textStyle?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
