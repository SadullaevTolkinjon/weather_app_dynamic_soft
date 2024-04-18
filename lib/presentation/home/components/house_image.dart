import 'package:flutter/material.dart';

import '../../../constants/images/app_images.dart';

class HouseImage extends StatelessWidget {
  const HouseImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 145,
      left: 0,
      right: 0,
      child: SizedBox(
        height: 390,
        child: Image.asset(AppImages.house),
      ),
    );
  }
}
