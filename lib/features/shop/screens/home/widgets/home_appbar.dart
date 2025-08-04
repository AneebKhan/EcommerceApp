import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/card_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CustomTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: CustomColors.grey)),
          Text(CustomTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: CustomColors.white)),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: (){} , iconColor: CustomColors.white,)
      ],
    );
  }
}