import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:japa_quest/src/constants/sizes.dart';
import 'package:japa_quest/src/features/authentication/screens/signup.widgets/varify_email.dart';

import '../../../../constants/text_strings.dart';
import '../login_divider_social/form_divider.dart';
import '../login_divider_social/social_buttons.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: firstName,
                    prefixIcon: Icon(Iconsax.user_copy),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: tDefaultSize,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: lastName,
                    prefixIcon: Icon(Iconsax.user_copy),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: tFormHeight,
          ),

          /// Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: username,
              prefixIcon: Icon(Iconsax.user_copy),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(
            height: tDefaultSize,
          ),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: email,
              prefixIcon: Icon(Iconsax.direct_copy),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(
            height: tFormHeight,
          ),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: phoneNo,
              prefixIcon: Icon(Iconsax.call_copy),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(
            height: tFormHeight,
          ),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: password,
              prefixIcon: Icon(Iconsax.password_check_copy),
              suffixIcon: Icon(Iconsax.eye_slash),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(
            height: tDefaultSize,
          ),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VarifyEmailScreen()),
              child: const Text(createAccount),
            ),
          ),
          const SizedBox(
            height: tFormHeight,
          ),

          /// Divider
          const TFormDivider(dividerText: "Or Sign In With"),
          const SizedBox(
            height: tDefaultSize,
          ),

          /// Social Buttons
          const TSocialButtons(),
        ],
      ),
    );
  }
}
