import 'package:flutter/material.dart';

class LessonPage extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;

  const LessonPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Lesson title and tabs
              Text(
              widget.title,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Content',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Text('Vocabulary'),
                  Text('Grammar tips'),
                ],
              ),
              const SizedBox(height: 16),

              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                widget.image, // Replace with your image asset path
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),

              // Description
               Text(
                 widget.subtitle
             ,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Anna is an international student from Thailand. Today she meets her tutor Sakura at the university for the first time.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Key phrase: WATASHI WA ANNA DESU',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 16),

              // Dialog Table
              Table(
                border: TableBorder.all(color: Colors.grey),
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(3),
                },
                children: const [
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('アンナ\nAnna', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('はじめまして。私はアンナです。\nHAJIMEMASHITE.\nWATASHI WA ANNA DESU.\nHow do you do?\nI\'m Anna.'),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('さくら\nSakura', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('はじめまして。さくらです。\nHAJIMEMASHITE.\nSAKURA DESU.\nHow do you do?\nI\'m Sakura.'),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('アンナ\nAnna', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('よろしくお願いします。\nYOROSHIKU ONEGAI SHIMASU.\nNice to meet you.'),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('さくら\nSakura', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('こちらこそ。\nKOCHIRAKOSO.\nNice to meet you, too.'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
