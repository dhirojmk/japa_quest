// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:japa_quest/src/constants/image_strings.dart';
// import 'package:japa_quest/src/constants/sizes.dart';
// import 'package:japa_quest/src/features/authentication/controllers/splash_screen_controller.dart';
// import 'package:japa_quest/src/features/authentication/screens/welcome/welcome_screen.dart';
// import '../../../../constants/text_strings.dart';
//
// class SplashScreen extends StatefulWidget {
//   SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   final splashController = Get.put(SplashScreenController());
//
//   @override
//   Widget build(BuildContext context) {
//     splashController.startAnimation();
//
//     // Get screen width and height
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Gradient Background
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.blue, Colors.purple],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//
//           // Top Image with Scaling Animation
//           Obx(
//                 () => AnimatedPositioned(
//               duration: const Duration(milliseconds: 1600),
//               top: splashController.animate.value ? 0 : -30,
//               left: splashController.animate.value ? 0 : -30,
//               child: AnimatedScale(
//                 scale: splashController.animate.value ? 1 : 0.5,
//                 duration: const Duration(milliseconds: 1600),
//                 child: Image(
//                   image: AssetImage(tSplashTopIcon),
//                   width: screenWidth * 0.4, // Adjust width as a percentage of screen width
//                 ),
//               ),
//             ),
//           ),
//
//           // App Name and Tagline with AnimatedOpacity and Slide Transition
//           Obx(
//                 () => AnimatedPositioned(
//               duration: const Duration(milliseconds: 1600),
//               top: screenHeight * 0.30,
//               left: splashController.animate.value ? screenWidth * 0.1 : -80,
//               child: AnimatedOpacity(
//                 duration: const Duration(milliseconds: 1600),
//                 opacity: splashController.animate.value ? 1 : 0,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     AnimatedScale(
//                       scale: splashController.animate.value ? 1 : 0.8,
//                       duration: const Duration(milliseconds: 1600),
//                       child: Text(
//                         tAppName,
//                         style: Theme.of(context).textTheme.headlineLarge?.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 5), // Add spacing between texts
//                     AnimatedOpacity(
//                       duration: const Duration(milliseconds: 1600),
//                       opacity: splashController.animate.value ? 1 : 0,
//                       child: Text(
//                         tAppTagLine,
//                         style: Theme.of(context).textTheme.headline6?.copyWith(
//                           color: Colors.white70,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//
//           // Bottom Image with Scaling Animation
//           Obx(
//                 () => AnimatedPositioned(
//               duration: const Duration(milliseconds: 2400),
//               bottom: splashController.animate.value
//                   ? screenHeight * 0.2
//                   : 0, // Adjust position based on screen height
//               right: 0,
//               child: AnimatedScale(
//                 scale: splashController.animate.value ? 1 : 0.8,
//                 duration: const Duration(milliseconds: 2000),
//                 child: AnimatedOpacity(
//                   duration: const Duration(milliseconds: 2000),
//                   opacity: splashController.animate.value ? 1 : 0,
//                   child: Image(
//                     image: AssetImage(tSplashImage),
//                     width: screenWidth * 1, // Adjust width as a percentage of screen width
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//           // Additional Bottom Icon with Scaling Animation
//           Obx(
//                 () => AnimatedPositioned(
//               duration: const Duration(milliseconds: 2400),
//               height: 50,
//               width: 60,
//               right: 10,
//               bottom: splashController.animate.value ? screenHeight * 0.05 : -30,
//               child: AnimatedScale(
//                 scale: splashController.animate.value ? 1 : 0.8,
//                 duration: const Duration(milliseconds: 2400),
//                 child: Image(
//                   image: const AssetImage(tSplashTopIcon),
//                   width: screenWidth * 0.2, // Adjust width as a percentage of screen width
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
