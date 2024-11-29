import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japa_quest/src/features/authentication/screens/login_screen/widgets/login_form.dart';
import 'package:japa_quest/src/features/authentication/screens/login_screen/widgets/login_header.dart';

import '../../../../constants/sizes.dart';
import '../login_divider_social/form_divider.dart';
import '../login_divider_social/social_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              ///logo,title and subtitle
              TLoginHeader(),

              ///Form
              TLoginForm(),

              ///Devider
              TFormDivider(dividerText: 'Or SignInWith'),

              SizedBox(
                height: tDefaultSize,
              ),

              ///Footer
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
