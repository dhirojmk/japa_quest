import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class KatakanaChart extends StatelessWidget {
  // List of Katakana characters and their romanizations
  final List<List<String>> katakana = [
    ['ア', 'a'], ['イ', 'i'], ['ウ', 'u'], ['エ', 'e'], ['オ', 'o'],
    ['カ', 'ka'], ['キ', 'ki'], ['ク', 'ku'], ['ケ', 'ke'], ['コ', 'ko'],
    ['ガ', 'ga'], ['ギ', 'gi'], ['グ', 'gu'], ['ゲ', 'ge'], ['ゴ', 'go'],
    ['サ', 'sa'], ['シ', 'shi'], ['ス', 'su'], ['セ', 'se'], ['ソ', 'so'],
    ['ザ', 'za'], ['ジ', 'ji'], ['ズ', 'zu'], ['ゼ', 'ze'], ['ゾ', 'zo'],
    ['タ', 'ta'], ['チ', 'chi'], ['ツ', 'tsu'], ['テ', 'te'], ['ト', 'to'],
    ['ダ', 'da'], ['ヂ', '(ji)'], ['ヅ', '(zu)'], ['デ', 'de'], ['ド', 'do'],
    ['ナ', 'na'], ['ニ', 'ni'], ['ヌ', 'nu'], ['ネ', 'ne'], ['ノ', 'no'],
    ['ハ', 'ha'], ['ヒ', 'hi'], ['フ', 'fu'], ['ヘ', 'he'], ['ホ', 'ho'],
    ['バ', 'ba'], ['ビ', 'bi'], ['ブ', 'bu'], ['ベ', 'be'], ['ボ', 'bo'],
    ['パ', 'pa'], ['ピ', 'pi'], ['プ', 'pu'], ['ペ', 'pe'], ['ポ', 'po']
  ];

   KatakanaChart({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width to calculate the number of columns dynamically
    final double screenWidth = MediaQuery.of(context).size.width;
    final int crossAxisCount = (screenWidth / 100).floor();
    final txtTheme = Theme.of(context).textTheme; // Adjust width as needed

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Katakana',
          style: txtTheme.headlineMedium?.copyWith(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFBA68C8),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Iconsax.language_circle_copy, color: Colors.white),
            onPressed: () {
              // Add functionality to show more info
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 1,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemCount: katakana.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: const Color(0xFFF3E5F5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      katakana[index][0],
                      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      katakana[index][1],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
