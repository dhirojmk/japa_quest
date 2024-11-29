import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japa_quest/src/constants/sizes.dart';

import '../../../../constants/image_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.subTitle, required this.onPressed, required AssetImage image, });

  final String title,subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              ///image
              const Image(image:  AssetImage(tAccountCreatedImage),height:200.0,),
              const SizedBox(height: tFormHeight),

              ///title & Subtitle
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: tFormHeight),
              Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: tFormHeight),

              ///Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed:onPressed,child: const Text("Continue"),),),
            ],
          ),
        ),
      ),
    );
  }
}
