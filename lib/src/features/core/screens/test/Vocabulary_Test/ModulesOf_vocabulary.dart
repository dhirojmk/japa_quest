import 'package:flutter/material.dart';
import 'package:japa_quest/src/features/core/screens/test/Vocabulary_Test/testpage.dart';

class ModulesofTest extends StatefulWidget {
  const ModulesofTest({super.key});

  @override
  State<ModulesofTest> createState() => _ModulesofTestState();
}

class _ModulesofTestState extends State<ModulesofTest> {
  final List<Map<String, String>> testData = [
    {'title': 'Test 1', 'description': 'Actual test of previous years'},
    {'title': 'Test 2', 'description': 'Actual test of previous years'},
    {'title': 'Test 3', 'description': 'Actual test of previous years'},
    {'title': 'Test 4', 'description': 'Actual test of previous years'},
    {'title': 'Test 5', 'description': 'Actual test of previous years'},
    {'title': 'Test 6', 'description': 'Actual test of previous years'},
    {'title': 'Test 7', 'description': 'Actual test of previous years'},
    {'title': 'Test 8', 'description': 'Actual test of previous years'},
    {'title': 'Test 9', 'description': 'Actual test of previous years'},
    {'title': 'Test 10', 'description': 'Actual test of previous years'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFFD482E8),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: testData.length,
        itemBuilder: (context, index) {
          final test = testData[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Test()),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: const Icon(
                  Icons.library_books_sharp,
                  size: 40,
                  color: Color(0xFFD482E8),
                ),
                title: Text(
                  test['title']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(test['description']!),
              ),
            ),
          );
        },
      ),
    );
  }
}
