import 'package:flutter/material.dart';

import '../../constants/color/color_const.dart';

class BluredContainer extends StatelessWidget {
  const BluredContainer(
      {super.key, required this.child, this.width = double.infinity});
  final Widget child;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        color: AppColor.kPrimaryColor2.withOpacity(0.5),
      ),
      child: child,
    );
  }
}
