import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'details_page.dart';

class GrammarPage extends StatelessWidget {
  const GrammarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of grammar rules to display
    final grammarList = [
      {"title": "AFFIRMATIVE SENTENCE", "subtitle": "〜は〜です"},
      {"title": "NEGATIVE SENTENCE", "subtitle": "〜はでありません"},
      {"title": "INTERROGATIVE SENTENCE", "subtitle": "〜はですか"},
      {"title": "PARTICLE の", "subtitle": "〜の"},
      {"title": "SENTENCES WITH THE PARTICLE の", "subtitle": "〜は〜の〜"},
      {"title": "PARTICLE も", "subtitle": "〜も"},
      {"title": "PARTICLE と", "subtitle": "〜と"},
      {"title": "THIS, THAT, THAT", "subtitle": "これ/それ/あれ"},
      {"title": "INTERROGATIVE WORD なに: WHAT", "subtitle": "なんですか"},
      {"title": "INTERROGATIVE WORD どれ: WHICH", "subtitle": "どれですか"},
      {"title": "この / その / あの: THIS, THAT, THAT", "subtitle": "この/その/あの"},
      {"title": "どの: WHICH〜", "subtitle": "どの〜ですか"}
    ];

    // Detailed descriptions for each grammar rule
    final grammarDetails = {
      "AFFIRMATIVE SENTENCE": "Affirmative sentences in Japanese are formed using the copula 'です' (desu). For example: 私は学生です (Watashi wa gakusei desu) - I am a student.",
      "NEGATIVE SENTENCE": "Negative sentences are formed using 'ではありません' (de wa arimasen) after the subject. For example: 私は学生ではありません (Watashi wa gakusei de wa arimasen) - I am not a student.",
      "INTERROGATIVE SENTENCE": "Interrogative sentences use 'ですか' (desu ka) at the end. For example: あなたは学生ですか？ (Anata wa gakusei desu ka?) - Are you a student?",
      "PARTICLE の": "The particle 'の' (no) is used to indicate possession or to connect nouns. For example: 彼の本 (Kare no hon) - his book.",
      "SENTENCES WITH THE PARTICLE の": "Sentences using 'の' connect two nouns. For example: これは私のペンです (Kore wa watashi no pen desu) - This is my pen.",
      "PARTICLE も": "The particle 'も' (mo) is used to mean 'also' or 'too.' For example: 私も行きます (Watashi mo ikimasu) - I will go too.",
      "PARTICLE と": "The particle 'と' (to) means 'and' or 'with.' For example: 友達と行きます (Tomodachi to ikimasu) - I will go with a friend.",
      "THIS, THAT, THAT": "'これ' (kore), 'それ' (sore), and 'あれ' (are) mean this, that, and that (over there) respectively.",
      "INTERROGATIVE WORD なに: WHAT": "The word 'なに' (nani) is used to ask 'what.' For example: これは何ですか？ (Kore wa nan desu ka?) - What is this?",
      "INTERROGATIVE WORD どれ: WHICH": "'どれ' (dore) is used to ask 'which.' For example: どれが好きですか？ (Dore ga suki desu ka?) - Which do you like?",
      "この / その / あの: THIS, THAT, THAT": "These demonstratives mean 'this,' 'that,' and 'that over there' respectively.",
      "どの: WHICH〜": "'どの' (dono) is used before a noun to ask 'which.' For example: どの車ですか？ (Dono kuruma desu ka?) - Which car is it?"
    };

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Find grammar",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Add your search functionality here
              },
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left_copy),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: grammarList.length,
        itemBuilder: (context, index) {
          final item = grammarList[index];
          return GestureDetector(
            onTap: () {
              // Navigate to a new page, passing the selected grammar rule and its details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: item['title']!,
                    subtitle: item['subtitle']!,
                    details: grammarDetails[item['title']]!, // Pass the details
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.deepPurpleAccent),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item['subtitle']!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
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
