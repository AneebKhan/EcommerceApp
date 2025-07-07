import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: CustomSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(image: AssetImage(image), width: CustomHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              /// Title & Sub Title
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              /// Button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: Text(CustomTexts.continueText))),

            ],
          ),
        ),
      ),
    );
  }
}
