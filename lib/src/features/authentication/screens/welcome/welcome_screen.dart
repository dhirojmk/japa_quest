import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:japa_quest/src/constants/colors.dart';
import 'package:japa_quest/src/constants/image_strings.dart';
import 'package:japa_quest/src/constants/sizes.dart';
import 'package:japa_quest/src/constants/text_strings.dart';
import 'package:japa_quest/src/features/authentication/screens/login_screen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: TColors.primary,
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purpleAccent,
                  TColors.secondary,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Main content
          Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Top section with image and animations
                Column(
                  children: [
                    AnimatedOpacity(
                      opacity: 1.0,
                      duration: const Duration(seconds: 2),
                      child: Image(
                        image: const AssetImage(
                          tWelcomeScreenImages,
                        ),
                        height: height * 0.3,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      tWelcomeScreenTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      tWelcomeScreenSubTitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                // Animated button with ripple effect
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => const LoginScreen()),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: const EdgeInsets.symmetric(
                              vertical: tButtonHeight),
                          backgroundColor: TColors.accent,
                          elevation: 5.0,
                          shadowColor: TColors.accent.withOpacity(0.5),
                        ),
                        child: Text(
                          tLogin.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                // Decorative elements or additional buttons (optional)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add action for icon button
                      },
                      icon: const Icon(Iconsax.instagram_copy,
                          color: Colors.white),
                    ),
                    const SizedBox(width: 20.0),
                    IconButton(
                      onPressed: () {
                        // Add action for icon button
                      },
                      icon: const Icon(Iconsax.facebook_copy,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
