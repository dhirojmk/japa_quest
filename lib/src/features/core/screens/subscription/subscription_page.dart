import 'package:flutter/material.dart';

void main() {
  runApp(const SubscriptionApp());
}

class SubscriptionApp extends StatelessWidget {
  const SubscriptionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SubscriptionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'One Pass to Ace All Courses',
          style: txtTheme.titleLarge?.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFD482E8),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Offer Section
            Container(
              color: Colors.yellow[100],
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Exclusive Offers', style: txtTheme.titleMedium?.copyWith(color: Colors.black)),
                        Text(
                          'Get an Extra 10% Discount Now!🎉',
                          style: txtTheme.titleSmall?.copyWith(color: Colors.black),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Limited Time Only',
                          style: txtTheme.bodySmall?.copyWith(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Apply Coupon', style: txtTheme.titleMedium?.copyWith(color: Colors.blueAccent)),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Handle apply action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent[200],
                        ),
                        child: const Text('Apply'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Subscription Cards
            buildSubscriptionCard(
              title: 'JapaQuest PASS PRO',
              days: '365 Days',
              originalPrice: '₹1,999',
              discountedPrice: '₹699',
              savings: '₹1,300',
              features: [
                '76000+ Mock Tests & 750+ Exams Covered',
                '17000+ Previous Year Papers',
                'Access to Practice Pro Questions',
                'Access to Pro Live Tests',
                'Unlimited Re-attempts for All Tests',
              ],
            ),
            buildSubscriptionCard(
              title: 'JapaQuest PASS',
              days: '365 Days',
              originalPrice: '₹1,499',
              discountedPrice: '₹629',
              savings: '₹870',
              features: [
                '76000+ Mock Tests & 750+ Exams Covered',
              ],
            ),
            // Explore Test Series Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Explore Test Series',
                style: txtTheme.titleLarge?.copyWith(color: Colors.black),
              ),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 15,
              children: [
                buildCategoryButton('All Exams', '19 Categories', true),
                buildCategoryButton('JLPT N5', '20 Tests', false),
                buildCategoryButton('Kanji Test', '', false),
                buildCategoryButton('Grammar Test', '', false),
                buildCategoryButton('Vocabulary', '', false),
                buildCategoryButton('Hearing', '', false),
                buildCategoryButton('Others', '', false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSubscriptionCard({
    required String title,
    required String days,
    required String originalPrice,
    required String discountedPrice,
    required String savings,
    required List<String> features,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
            const SizedBox(height: 8),
            Text(days, style: TextStyle(fontSize: 16, color: Colors.grey[600])),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  originalPrice,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text(
                  discountedPrice,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Text(
                  'You Save $savings',
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...features.map((feature) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  const Icon(Icons.check, color: Colors.green, size: 16),
                  const SizedBox(width: 8),
                  Expanded(child: Text(feature, style: const TextStyle(fontSize: 14))),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryButton(String title, String subtitle, bool isSelected) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.black, backgroundColor: isSelected ? Colors.blue : Colors.white,
        elevation: 5,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          if (subtitle.isNotEmpty)
            Text(subtitle, style: TextStyle(fontSize: 12, color: isSelected ? Colors.white : Colors.grey)),
        ],
      ),
    );
  }
}
