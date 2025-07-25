import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: CustomColors.primary,
              padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  CustomCircularContainer(backgroundColor: CustomColors.textWhite.withOpacity(0.1),),
                  CustomCircularContainer(backgroundColor: CustomColors.textWhite.withOpacity(0.1),),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
