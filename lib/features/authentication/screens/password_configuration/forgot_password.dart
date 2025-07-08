import 'package:ecommerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(CustomTexts.forgotPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: CustomSizes.spaceBtwItems),
            Text(CustomTexts.forgotPasswordSubtitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: CustomSizes.spaceBtwSections * 2),

            /// Text Field
            TextFormField(
              decoration: InputDecoration(labelText: CustomTexts.email, prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwSections),

            /// Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => ResetPasswordScreen()), child: const Text(CustomTexts.submit,)))

          ],
        ),
      ),
    );
  }
}
