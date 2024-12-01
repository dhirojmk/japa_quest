import 'package:flutter/material.dart';
import 'result_page.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int currentQuestion = 0;

  final List<Map<String, dynamic>> questions = [
    {
      "question": "どうぞ お（先）に お入り ください。",
      "options": ["さけ", "さき", "ざけ", "さぎ"],
      "correctIndex": 1,
      "selectedIndex": -1,
    },
    {
      "question": "これは何ですか？",
      "options": ["ねこ", "いぬ", "さる", "とり"],
      "correctIndex": 0,
      "selectedIndex": -1,
    },
    {
      "question": "今日の天気はどうですか？",
      "options": ["あめ", "はれ", "くもり", "ゆき"],
      "correctIndex": 1,
      "selectedIndex": -1,
    },
    {
      "question": "学校に行く時間は？",
      "options": ["午前7時", "午前8時", "午後3時", "午後5時"],
      "correctIndex": 0,
      "selectedIndex": -1,
    },
    {
      "question": "どうぞ お（先）に お入り ください。",
      "options": ["さけ", "さき", "ざけ", "さぎ"],
      "correctIndex": 1,
      "selectedIndex": -1,
    },
  ];

  void selectAnswer(int index) {
    setState(() {
      questions[currentQuestion]["selectedIndex"] = index;
    });
  }

  void goToNextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(questions: questions),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final current = questions[currentQuestion];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kanji Pronunciation"),
        backgroundColor:const Color(0xFFD482E8),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Display question number
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Question ${currentQuestion + 1}/${questions.length}",
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(16.0),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Question with orange background
                  Container(
                    color:const Color(0xFFD482E1),
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      current["question"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Options with numbering
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: current["options"].length,
                      itemBuilder: (context, index) {
                        final isSelected = current["selectedIndex"] == index;
                        return GestureDetector(
                          onTap: () => selectAnswer(index),
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Colors.blue[100]
                                  : Colors.white,
                              border: Border.all(
                                color: isSelected
                                    ? Colors.blue
                                    : Colors.grey[300]!,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "${index + 1}. ", // Option number
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    current["options"][index],
                                    style: const TextStyle(fontSize: 16.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: goToNextQuestion,
              child: Text(
                currentQuestion < questions.length - 1 ? "Next" : "Finish",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
