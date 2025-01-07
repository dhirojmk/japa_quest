import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:get/get_navigation/src/root/get_material_app.dart'; // Import GetX
import 'package:japa_quest/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: const OnBoardingScreen(),
    );
  }
}
