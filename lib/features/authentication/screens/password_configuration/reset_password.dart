import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Image(image: AssetImage(CustomImages.deliveredEmailIllustration), width: CustomHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              /// Title & Sub Title
              Text(CustomTexts.changePasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Text(CustomTexts.changePasswordSubtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              /// Button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text(CustomTexts.done))),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: Text(CustomTexts.resendEmail))),

            ],
          ),
        ),
      ),
    );
  }
}
