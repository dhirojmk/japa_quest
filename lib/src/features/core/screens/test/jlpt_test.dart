import 'package:flutter/material.dart';
import 'package:japa_quest/src/features/core/screens/test/test_menu.dart';

class JlptTest extends StatefulWidget {
  const JlptTest({super.key});

  @override
  State<JlptTest> createState() => _JlptTestState();
}

class _JlptTestState extends State<JlptTest> {
  String selectedLevel = "JLPT N5"; // Default selected level
  final List<Map<String, String>> jlptLevels = [
    {
      "image": "assets/images/lesson/test.png",
      "title": "JLPT N5",
      "description": "For the beginner."
    },
    {
      "image": "assets/images/lesson/test.png",
      "title": "JLPT N4",
      "description": "Basic level Japanese proficiency."
    },
    {
      "image": "assets/images/lesson/test.png",
      "title": "JLPT N3",
      "description": "Intermediate level Japanese proficiency."
    },
    {
      "image": "assets/images/lesson/test.png",
      "title": "JLPT N2",
      "description": "Advanced level Japanese proficiency."
    },
    {
      "image": "assets/images/lesson/test.png",
      "title": "JLPT N1",
      "description": "Expert level Japanese proficiency."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text("JLPT Test"),
        backgroundColor: const Color(0xFFD482E8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Choose Level Dropdown
            Row(
              children: [
                const Text(
                  "Choose Level: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: selectedLevel,
                  items: jlptLevels
                      .map((level) => DropdownMenuItem(
                            value: level["title"],
                            child: Text(level["title"]!),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedLevel = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Upcoming Exam Announcement
            const Text(
              "Upcoming JLPT Exam is on 1st Jan 2025",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 16),
            // List of Cards
            Expanded(
              child: ListView.builder(
                itemCount: jlptLevels.length,
                itemBuilder: (context, index) {
                  final level = jlptLevels[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TestPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFF3E5F5),
                            const Color(0xFFF3E5F5).withOpacity(0.7)
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(level["image"]!),
                        ),
                        title: Text(
                          level["title"]!,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          level["description"]!,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
