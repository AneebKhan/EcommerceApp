import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
                    image: AssetImage(dark ? CustomImages.lightAppLogo : CustomImages.darkAppLogo),
                  ),
                  Text(CustomTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height: CustomSizes.sm),
                  Text(CustomTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
