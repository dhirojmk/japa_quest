import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:japa_quest/src/constants/colors.dart';
import 'package:japa_quest/src/constants/image_strings.dart';
import 'package:japa_quest/src/constants/sizes.dart';
import 'package:japa_quest/src/constants/text_strings.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../welcome/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: controller,
            onPageChangeCallback: onPageChangedCallback,
            pages: [
              Container(
                padding: const EdgeInsets.all(tDefaultSize),
                color: const Color(0xFFF3E5F5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(tOnBoardingImage1),
                      height: size.height * 0.4,
                    ),
                    Column(
                      children: [
                        Text(
                          tOnBoardingTitle1,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const Text(
                          tOnBoardingSubTitle1,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const Text(tOnBoardingCounter1),
                    const SizedBox(height: 50.0),
                  ],
                ),
              ),
              Container(
                color: TColors.tOnBoardingPage2Color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(tOnBoardingImage2),
                      height: size.height * 0.4,
                    ),
                    Column(
                      children: [
                        Text(
                          tOnBoardingTitle2,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const Text(
                          tOnBoardingSubTitle2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const Text(tOnBoardingCounter2),
                    const SizedBox(height: 50.0),
                  ],
                ),
              ),
              Container(
                color: TColors.tOnBoardingPage3Color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(tOnBoardingImage3),
                      height: size.height * 0.4,
                    ),
                    Column(
                      children: [
                        Text(
                          tOnBoardingTitle3,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const Text(
                          tOnBoardingSubTitle3,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const Text(tOnBoardingCounter3),
                    const SizedBox(height: 50.0),
                  ],
                ),
              ),
            ],
            slideIconWidget: const Icon(Iconsax.arrow_left_2_copy),

            enableSideReveal: false,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                if (nextPage == 3) {
                  navigateToWelcomeScreen(context); // Navigate to Welcome screen after the last page
                } else {
                  controller.animateToPage(page: nextPage);
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: TColors.tDarkColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                navigateToWelcomeScreen(context); // Navigate to Welcome screen when "Skip" is pressed
              },
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: currentPage,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPageChangedCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;

      if (activePageIndex == 3) {
        navigateToWelcomeScreen(context); // Automatically navigate to the Welcome Screen
      }
    });
  }

  void navigateToWelcomeScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }
}
