import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'lesson_page.dart';

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
      Lesson('Lesson 1', 'I\'m Anna.', 'assets/images/lesson/hii.jpg'),
      Lesson('Lesson 2', 'What is this?', 'assets/images/lesson/what.jpg'),
      Lesson('Lesson 3', 'Where is a restroom?', 'assets/images/lesson/restroom.jpg'),
      Lesson('Lesson 4', 'I\'m home.', 'assets/images/lesson/home.jpg'),
      Lesson('Lesson 5', 'They are my treasures.', 'assets/images/lesson/mytreasures.jpg'),
      Lesson('Lesson 6', 'What is your telephone number?', 'assets/images/lesson/phone.png'),
      Lesson('Lesson 7', 'Are there cream puffs?', 'assets/images/lesson/puff.jpg'),
      Lesson('Lesson 8', 'Once more, please.', 'assets/images/lesson/oncemore.jpg'),
      Lesson('Lesson 9', 'From what time?', 'assets/images/lesson/time.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
      ),
      body: ListView.separated(
        itemCount: lessons.length,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          color: Colors.grey,
          height: 1, // Reduced height between items
        ),
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8), // Adjusted padding
            leading: Image.asset(lesson.image, width: 70, height: 70, fit: BoxFit.cover),
            title: Text(lesson.title),
            subtitle: Text(lesson.subtitle),
            trailing: const Icon(Iconsax.arrow_right_2), // Replaced with valid icon
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LessonPage(
                    image: lesson.image,
                    title: lesson.title,
                    subtitle: lesson.subtitle,
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.book_1),
            label: 'Lessons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.settings),
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
