import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String details; // Parameter for detailed information

  const DetailPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left_2_copy),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.bookmark_copy),
            tooltip: 'Add to Favorites',
            onPressed: () {
              // Functionality to add to favorites
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$title added to favorites!')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Iconsax.share),
            tooltip: 'Share',
            onPressed: () {
              // Functionality to share
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Share $title functionality coming soon!')),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              details, // Display the detailed information here
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // Functionality for additional action, e.g., practice
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Practice $title functionality coming soon!')),
                );
              },
              icon: const Icon(Iconsax.edit_2_copy, color: Colors.white),
              label: const Text('Practice This Rule', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                backgroundColor: Colors.deepPurpleAccent, // Custom color for the button
              ),
            ),
          ],
        ),
      ),
    );
  }
}
