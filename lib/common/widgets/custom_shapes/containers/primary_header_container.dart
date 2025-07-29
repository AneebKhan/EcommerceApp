import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class CustomPrimaryHeaderContainer extends StatelessWidget {
  const CustomPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;


  @override
  Widget build(BuildContext context) {
    return CustomCurvedEdgesWidget(
      child: Container(
        color: CustomColors.primary,
        padding: EdgeInsets.all(0),

        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: CustomCircularContainer(backgroundColor: CustomColors.textWhite.withValues(alpha: 0.1),)),
              Positioned(top: 100, right: -300, child: CustomCircularContainer(backgroundColor: CustomColors.textWhite.withValues(alpha: 0.1),)),
              child,
            ],
          ),
        ),
      ),
    );
  }
}