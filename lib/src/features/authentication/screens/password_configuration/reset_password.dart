import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japa_quest/src/constants/image_strings.dart';
import 'package:japa_quest/src/constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../login_screen/login_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.to(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(tFormHeight),
          child: Column(
            children: [
              /// Image
              const Image(
                image: AssetImage(tPasswordRestImage),
              ),
              const SizedBox(height: tDefaultSize),

              /// Title & Subtitle
              Text(
                changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: tFormHeight),
              Text(
                changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: tFormHeight),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Done"),
                ),
              ),
              const SizedBox(height: tFormHeight),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
