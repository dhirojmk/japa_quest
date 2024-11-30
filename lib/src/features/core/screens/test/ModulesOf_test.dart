import 'package:flutter/material.dart';

class ModulesofTest extends StatefulWidget {
  const ModulesofTest({super.key});

  @override
  State<ModulesofTest> createState() => _ModulesofTestState();
}

class _ModulesofTestState extends State<ModulesofTest> {
  // Sample data for the cards
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
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),

        backgroundColor:const Color(0xFFD482E8),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: testData.length,
        itemBuilder: (context, index) {
          final test = testData[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const Icon(
                Icons.library_books_sharp,
                size: 40,
                color: const Color(0xFFD482E8),
              ),
              title: Text(
                test['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(test['description']!),
              onTap: () {
                // Handle card tap if needed
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('${test['title']} tapped!'),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
