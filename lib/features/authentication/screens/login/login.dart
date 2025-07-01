import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../signup/widets/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and SubTitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? CustomImages.lightAppLogo : CustomImages.darkAppLogo,),
                  ),
                  SizedBox(height: CustomSizes.sm),
                  Text(
                    CustomTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: CustomSizes.sm),
                  Text(
                    CustomTexts.loginSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: CustomSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: CustomTexts.email,
                        ),
                      ),
                      SizedBox(height: CustomSizes.spaceBtwInputFields),

                      /// Password
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: CustomTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      SizedBox(height: CustomSizes.spaceBtwInputFields / 2),
                    ],
                  ),
                ),
              ),

              /// Remember Me and Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Remember Me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text(CustomTexts.rememberMe),
                    ],
                  ),

                  /// Forgot Password
                  TextButton(
                    onPressed: () {},
                    child: Text(CustomTexts.forgotPassword),
                  ),
                ],
              ),
              SizedBox(height: CustomSizes.spaceBtwSections),

              /// Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(CustomTexts.signIn),
                ),
              ),
              SizedBox(height: CustomSizes.spaceBtwItems),

              /// Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()),
                  child: Text(CustomTexts.createAccount),
                ),
              ),
              SizedBox(height: CustomSizes.spaceBtwSections),

              /// Divider
              CustomFormDivider(dividerText: CustomTexts.orSignInWith.capitalize!),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              /// Footer
              CustomSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
