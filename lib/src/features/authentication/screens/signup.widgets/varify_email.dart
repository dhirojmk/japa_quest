import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japa_quest/src/constants/image_strings.dart';
import 'package:japa_quest/src/constants/sizes.dart';

import '../../../../constants/text_strings.dart';
import '../login_screen/login_screen.dart';
import '../sucess_screen/success_screen.dart';


class VarifyEmailScreen extends StatelessWidget {
  const VarifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              ///image
              const Image(
                image: AssetImage(tEmailveryfyImage),
                height: tDefaultSize * 16,
              ),
              const SizedBox(height: tDefaultSize),

              ///title & Subtitle
              Text(confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: tFormHeight),
              Text('swavenir.systems@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: tFormHeight),
              Text(confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height:tFormHeight),

              ///Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() =>  SuccessScreen(
                    image:  const AssetImage(tAccountCreatedImage),
                    //height: tDefaultSize * 16,
                    title: yourAccountCreatedTitle,
                    subTitle: yourAccountCreatedSubTitle, onPressed: () => Get.to(()=> const LoginScreen()),
                  ),),
                  child: const Text("Continue"),
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
