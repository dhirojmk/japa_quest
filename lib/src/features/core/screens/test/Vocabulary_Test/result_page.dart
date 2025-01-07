import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final List<Map<String, dynamic>> questions;

  const ResultPage({super.key, required this.questions});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String selectedTab = "All";

  List<Map<String, dynamic>> get filteredQuestions {
    switch (selectedTab) {
      case "Selected":
        return widget.questions.where((q) => q["selectedIndex"] != -1).toList();
      case "Not Select":
        return widget.questions.where((q) => q["selectedIndex"] == -1).toList();
      default:
        return widget.questions;
    }
  }

  int calculateScore() {
    return widget.questions.where((q) {
      return q["selectedIndex"] == q["correctIndex"];
    }).length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        backgroundColor: const Color(0xFFD482E8),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Your Score: ${calculateScore()} / ${widget.questions.length}",
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              _buildTabButton("All"),
              _buildTabButton("Selected"),
              _buildTabButton("Not Select"),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredQuestions.length,
              itemBuilder: (context, index) {
                final question = filteredQuestions[index];
                final correct = question["selectedIndex"] == question["correctIndex"];
                return ListTile(
                  title: Text(
                    question["question"],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Your Answer: ${question["selectedIndex"] != -1 ? question["options"][question["selectedIndex"]] : "No Answer"}\nCorrect Answer: ${question["options"][question["correctIndex"]]}",
                  ),
                  leading: Icon(
                    correct ? Icons.check_circle : Icons.cancel,
                    color: correct ? Colors.green : Colors.red,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(String tab) {
    final isSelected = selectedTab == tab;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = tab;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: isSelected ? const Color(0xFFD482E8) : const Color(0x0ffd482e),
          child: Center(
            child: Text(
              tab,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
