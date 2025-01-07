import 'package:flutter/material.dart';

class HiraganaChart extends StatelessWidget {
  // List of Hiragana characters and their romanizations
  final List<List<String>> hiraganaData = [
    ['あ', 'a'], ['い', 'i'], ['う', 'u'], ['え', 'e'], ['お', 'o'],
    ['か', 'ka'], ['き', 'ki'], ['く', 'ku'], ['け', 'ke'], ['こ', 'ko'],
    ['が', 'ga'], ['ぎ', 'gi'], ['ぐ', 'gu'], ['げ', 'ge'], ['ご', 'go'],
    ['さ', 'sa'], ['し', 'shi'], ['す', 'su'], ['せ', 'se'], ['そ', 'so'],
    ['ざ', 'za'], ['じ', 'ji'], ['ず', 'zu'], ['ぜ', 'ze'], ['ぞ', 'zo'],
    ['た', 'ta'], ['ち', 'chi'], ['つ', 'tsu'], ['て', 'te'], ['と', 'to'],
    ['だ', 'da'], ['ぢ', '(ji)'], ['づ', '(zu)'], ['で', 'de'], ['ど', 'do'],
    ['な', 'na'], ['に', 'ni'], ['ぬ', 'nu'], ['ね', 'ne'], ['の', 'no'],
    ['は', 'ha'], ['ひ', 'hi'], ['ふ', 'fu'], ['へ', 'he'], ['ほ', 'ho'],
    ['ば', 'ba'], ['び', 'bi'], ['ぶ', 'bu'], ['べ', 'be'], ['ぼ', 'bo'],
    ['ぱ', 'pa'], ['ぴ', 'pi'], ['ぷ', 'pu'], ['ぺ', 'pe'], ['ぽ', 'po']
  ];

  HiraganaChart({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width to calculate the number of columns dynamically
    final double screenWidth = MediaQuery.of(context).size.width;
    final int crossAxisCount = (screenWidth / 100).floor();
    final txtTheme = Theme.of(context).textTheme; // Adjust width as needed

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hiragana',
          style: txtTheme.headlineMedium?.copyWith(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFBA68C8),
        centerTitle: true,
        automaticallyImplyLeading: false, // This line removes the back arrow
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true, // Makes GridView take only the space it needs
            physics: const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 1,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemCount: hiraganaData.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: const Color(0xFFF3E5F5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hiraganaData[index][0],
                      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      hiraganaData[index][1],
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
