import 'package:flutter/material.dart';
import 'package:japa_quest/src/constants/sizes.dart';
import 'package:japa_quest/src/features/authentication/screens/signup.widgets/signup_form.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                height: 150,
                image: AssetImage(tOnBoardingImage2),
              ),
              ///Title
              Text(
                signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: tFormHeight,
              ),

              ///Form
              const TSignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}

