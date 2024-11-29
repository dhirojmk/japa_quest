import 'package:flutter/material.dart';
import 'package:japa_quest/src/constants/image_strings.dart';

import '../../../../constants/colors.dart';



class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.Gray),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: 35.0,
              image: AssetImage(tGoogleLogoImage),
            ),
          ),
        ),
      ],
    );
  }
}

