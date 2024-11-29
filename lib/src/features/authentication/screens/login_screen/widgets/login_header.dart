import 'package:flutter/material.dart';
import 'package:japa_quest/src/constants/image_strings.dart';
import 'package:japa_quest/src/constants/sizes.dart';
import 'package:japa_quest/src/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 100),
        // Image wrapped in Container
        Container(
          width: screenWidth * 0.9, // Responsive width
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), // Rounded corners
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                spreadRadius: 2,
                offset: Offset(0, 4), // Shadow effect
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15), // Clip image within the rounded corners
            child: const Image(
              fit: BoxFit.cover, // Make the image cover the container
              image: AssetImage(tLoginImage),
            ),
          ),
        ),
        const SizedBox(height: tDefaultSize),
        const SizedBox(height: tDefaultSize),
        const SizedBox(height: tDefaultSize),

        // Title Text
        Text(
          tLoginTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: tDefaultSize / 2),

        // Subtitle Text
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            tLoginSubTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey[600],
            ),
          ),
        ),
        const SizedBox(height: tDefaultSize),
      ],
    );
  }
}
