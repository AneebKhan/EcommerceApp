import 'package:ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                CustomTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              /// Form
              Form(
                child: Column(
                  children: [
                    /// First and Last name
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(labelText: CustomTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),

                        const SizedBox(width: CustomSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(labelText: CustomTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: CustomSizes.spaceBtwInputFields),

                    /// Username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(labelText: CustomTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
                    ),

                    const SizedBox(height: CustomSizes.spaceBtwInputFields),

                    /// Email
                    TextFormField(
                      decoration: const InputDecoration(labelText: CustomTexts.email, prefixIcon: Icon(Iconsax.direct)),
                    ),

                    const SizedBox(height: CustomSizes.spaceBtwInputFields),

                    /// Phone Number
                    TextFormField(
                      decoration: const InputDecoration(labelText: CustomTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
                    ),

                    const SizedBox(height: CustomSizes.spaceBtwInputFields),

                    /// Password
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: CustomTexts.password,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash)
                      ),
                    ),

                    const SizedBox(height: CustomSizes.spaceBtwSections),

                    /// Terms and Conditions Checkbox
                    Row(
                      children: [
                        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
                        const SizedBox(width: CustomSizes.spaceBtwItems),
                        Text.rich(
                            TextSpan(children: [
                              TextSpan(text: '${CustomTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(text: CustomTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark ? CustomColors.white : CustomColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? CustomColors.white : CustomColors.primary,
                              )),
                              TextSpan(text: ' ${CustomTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(text: CustomTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark ? CustomColors.white : CustomColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? CustomColors.white : CustomColors.primary,
                              )),
                          ]
                        ))
                      ],
                    ),

                    const SizedBox(height: CustomSizes.spaceBtwSections),
                    /// SignUp Button
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text(CustomTexts.createAccount)),)
                  ],
                ),
              ),

              const SizedBox(height: CustomSizes.spaceBtwSections),
              /// Divider
              CustomFormDivider(dividerText: CustomTexts.orSignUpWith.capitalize!),

              const SizedBox(height: CustomSizes.spaceBtwSections),
              /// Social Buttons
              CustomSocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}
