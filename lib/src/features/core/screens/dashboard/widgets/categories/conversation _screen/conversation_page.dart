import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Lesson {
  final String title;
  final String subtitle;
  final String image;

  Lesson(this.title, this.subtitle, this.image);
}

class ConversationPage extends StatefulWidget {
  const ConversationPage({super.key});

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final lessons = [
      Lesson('Lesson 1', 'I\'m Anna.', 'assets/lesson1.png'),
      Lesson('Lesson 2', 'What is this?', 'assets/lesson2.png'),
      Lesson('Lesson 3', 'Where is a restroom?', 'assets/lesson3.png'),
      Lesson('Lesson 4', 'I\'m home.', 'assets/lesson4.png'),
      Lesson('Lesson 5', 'They are my treasures.', 'assets/lesson5.png'),
      Lesson('Lesson 6', 'What is your telephone number?', 'assets/lesson6.png'),
      Lesson('Lesson 7', 'Are there cream puffs?', 'assets/lesson7.png'),
      Lesson('Lesson 8', 'Once more, please.', 'assets/lesson8.png'),
      Lesson('Lesson 9', 'From what time?', 'assets/lesson9.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return ListTile(
            leading: Image.asset("assets/images/lesson/lesson1.jpg", width: 70, height: 70),
            title: Text(lesson.title),
            subtitle: Text(lesson.subtitle),
            trailing: const Icon(Iconsax.arrow_right_2_copy), // This adds the forward arrow
            onTap: () {
              // Handle lesson item tap here if needed
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1_copy),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.book_1_copy),
            label: 'Lessons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.settings_copy),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
