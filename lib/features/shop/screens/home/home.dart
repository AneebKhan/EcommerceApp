import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            CustomPrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(CustomTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: CustomColors.grey)),
                        Text(CustomTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: CustomColors.white)),
                      ],
                    ),
                    actions: [
                      IconButton(onPressed: () {}, icon: Icon(Iconsax.shopping_bag, color: CustomColors.white))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
