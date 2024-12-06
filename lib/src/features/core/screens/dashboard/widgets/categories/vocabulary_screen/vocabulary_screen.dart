import 'package:flutter/material.dart';

class VocabularyScreen extends StatelessWidget {
  const VocabularyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vocabularyList = [
      {
        "word": "きょう (今日)",
        "description": "today, this day",
        "sentence":
        "今日はお忙しいところ、ありがとうございます。 (Thank you for taking the time out of your busy schedule today.)",
      },
      {
        "word": "あした (明日)",
        "description": "tomorrow",
        "sentence": "明日の3時に、そちらにうかがいます。 (I will visit you tomorrow at 3:30.)",
      },
      {
        "word": "きのう (昨日)",
        "description": "yesterday",
        "sentence": "昨日は、いろいろとお世話になりました。 (Thank you for everything you did yesterday.)",
      },
      {
        "word": "さくじつ (昨日)",
        "description": "the day before",
        "sentence": "会議の前日に準備をする。 (I will make preparations the day before the meeting.)",
      },
      {
        "word": "あさって (明後日)",
        "description": "the day after tomorrow",
        "sentence": "私の誕生日は、あさってだ。 (My birthday is in three days.)",
      },
      {
        "word": "さきおととい (一昨昨日)",
        "description": "three days ago",
        "sentence": "先週末に高校の同窓会があった。 (We had a high school reunion three days ago.)",
      },
      {
        "word": "さくねん (昨年)",
        "description": "last year",
        "sentence": "昨年の5月に日本に行きました。 (I came to Japan in May of last year.)",
      },
      {
        "word": "おととい (一昨日)",
        "description": "the day before yesterday",
        "sentence": "おとといは忙しかったです。 (The day before yesterday was busy.)",
      },
      {
        "word": "みょうにち (明日)",
        "description": "formal for tomorrow",
        "sentence": "明日の会議を楽しみにしています。 (I’m looking forward to tomorrow’s meeting.)",
      },
      {
        "word": "いちねんまえ (一年前)",
        "description": "a year ago",
        "sentence": "ちょうど一年前に卒業しました。 (I graduated exactly a year ago.)",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('N3 | Time Expressions'),
        backgroundColor: const Color(0xFFBA68C8),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: vocabularyList.length,
        itemBuilder: (context, index) {
          final item = vocabularyList[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item["word"]!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:Color(0xFFBA68C8),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item["description"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.volume_up,
                        color: Color(0xFFBA6844),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item["sentence"]!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
