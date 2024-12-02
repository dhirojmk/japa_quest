import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Model for Word Details
class WordDetails {
  final String kanji;
  final String english;
  final String kunYomi;
  final String onYomi;
  final List<String> examples;

  WordDetails({
    required this.kanji,
    required this.english,
    required this.kunYomi,
    required this.onYomi,
    required this.examples,
  });
}

// StateNotifier for managing the selected word's details and language selection
class WordNotifier extends StateNotifier<WordDetails> {
  WordNotifier()
      : super(
    WordDetails(
      kanji: '外',
      english: 'Outside',
      kunYomi: 'そと, ほか, はず(す), はず(れる)',
      onYomi: 'ガイ, ゲ',
      examples: [
        '外国 (がいこく): Foreign country',
        '外国人 (がいこくじん): Foreigner',
        '国外 (こくがい): Outside the country',
      ],
    ),
  );

  void updateWord(WordDetails newWord) {
    state = newWord;
  }
}

// Provider for WordNotifier
final wordProvider = StateNotifierProvider<WordNotifier, WordDetails>(
      (ref) => WordNotifier(),
);

// Enum to manage language selection
enum Language { Kanji, Kana, English }

// StateNotifier to manage the selected language
class LanguageNotifier extends StateNotifier<Language> {
  LanguageNotifier() : super(Language.Kanji);

  void selectLanguage(Language language) {
    state = language;
  }
}

// Provider for LanguageNotifier
final languageProvider = StateNotifierProvider<LanguageNotifier, Language>(
      (ref) => LanguageNotifier(),
);

class KanjiPage extends ConsumerWidget {
  const KanjiPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to the current word state
    final wordDetails = ref.watch(wordProvider);
    final selectedLanguage = ref.watch(languageProvider);

    // List of all word items
    final words = [
      WordDetails(
        kanji: '生',
        english: 'Life, birth',
        kunYomi: 'い(きる), う(まれる)',
        onYomi: 'セイ, ショウ',
        examples: [
          '生きる (いきる): To live',
          '出生 (しゅっせい): Birth',
        ],
      ),
      WordDetails(
        kanji: '外',
        english: 'Outside',
        kunYomi: 'そと, ほか, はず(す), はず(れる)',
        onYomi: 'ガイ, ゲ',
        examples: [
          '外国 (がいこく): Foreign country',
          '外国人 (がいこくじん): Foreigner',
          '国外 (こくがい): Outside the country',
          '外食 (がいしょく): Eating out',
        ],
      ),
      WordDetails(
        kanji: '国',
        english: 'Country',
        kunYomi: 'くに',
        onYomi: 'コク',
        examples: [
          '国 (くに): Country',
          '中国 (ちゅうごく): China',
          '外国 (がいこく): Foreign country',
        ],
      ),
      WordDetails(
        kanji: '子',
        english: 'Child',
        kunYomi: 'こ, ね',
        onYomi: 'シ',
        examples: [
          '子供 (こども): Child',
          '子犬 (こいぬ): Puppy',
        ],
      ),
      WordDetails(
        kanji: '本',
        english: 'Book',
        kunYomi: 'ほん',
        onYomi: 'ホン',
        examples: [
          '本 (ほん): Book',
          '図書館 (としょかん): Library',
        ],
      ),
      WordDetails(
        kanji: '山',
        english: 'Mountain',
        kunYomi: 'やま',
        onYomi: 'サン, セン',
        examples: [
          '山 (やま): Mountain',
          '富士山 (ふじさん): Mount Fuji',
        ],
      ),
      WordDetails(
        kanji: '川',
        english: 'River',
        kunYomi: 'かわ',
        onYomi: 'セン',
        examples: [
          '川 (かわ): River',
          '川辺 (かわべ): Riverside',
        ],
      ),
      WordDetails(
        kanji: '一',
        english: 'One',
        kunYomi: 'いち, いつ',
        onYomi: 'イチ',
        examples: [
          '一つ (ひとつ): One thing',
          '一日 (いちにち): One day',
        ],
      ),
      WordDetails(
        kanji: '男',
        english: 'Man',
        kunYomi: 'おとこ',
        onYomi: 'ダン, ナン',
        examples: [
          '男 (おとこ): Man',
          '男性 (だんせい): Male',
        ],
      ),
    ];


    // Filter words based on selected language
    List<String> getWordDetails(WordDetails word) {
      switch (selectedLanguage) {
        case Language.Kanji:
          return [word.kanji];
        case Language.Kana:
          return [word.kunYomi, word.onYomi];
        case Language.English:
          return [word.english];
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kanji Learning'),
        centerTitle: true,
        backgroundColor:const Color(0xFFD482E8),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text('✓ 1', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Text('✗ 1', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Text('Remaining: 50', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Language selection buttons


          // Card displaying the selected word's details
          Card(
            margin: const EdgeInsets.all(12),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kanji and English translation
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              wordDetails.kanji,
                              style: TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[900],
                              ),
                            ),
                            Text(
                              'English: ${wordDetails.english}',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.volume_up),
                        onPressed: () {
                          // Add sound functionality
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Kun Yomi and On Yomi
                  Text(
                    'Kun Yomi: ${wordDetails.kunYomi}\nOn Yomi: ${wordDetails.onYomi}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  // Examples
                  Text(
                    'Examples:\n${wordDetails.examples.join('\n')}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Kanji Button
              TextButton(
                onPressed: () {
                  ref.read(languageProvider.notifier).selectLanguage(Language.Kanji);
                },
                child: Text(
                  '- Kanji',
                  style: TextStyle(
                    color: selectedLanguage == Language.Kanji ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
              // Kana Button
              TextButton(
                onPressed: () {
                  ref.read(languageProvider.notifier).selectLanguage(Language.Kana);
                },
                child: Text(
                  'Kana',
                  style: TextStyle(
                    color: selectedLanguage == Language.Kana ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
              // English Button
              TextButton(
                onPressed: () {
                  ref.read(languageProvider.notifier).selectLanguage(Language.English);
                },
                child: Text(
                  'English',
                  style: TextStyle(
                    color: selectedLanguage == Language.English ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          // Grid displaying words based on selected language
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              padding: const EdgeInsets.all(12),
              itemCount: words.length,
              itemBuilder: (context, index) {
                final word = words[index];
                final wordDetailsList = getWordDetails(word);
                final isSelected = word.kanji == wordDetails.kanji;
                return GestureDetector(
                  onTap: () {
                    ref.read(wordProvider.notifier).updateWord(word);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.green[300] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: isSelected ? Colors.green : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        wordDetailsList.join('\n'),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
