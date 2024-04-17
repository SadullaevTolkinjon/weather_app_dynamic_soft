import 'package:flutter/material.dart';

import '../../../constants/images/app_images.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      width: double.infinity,
      child: Image.asset(AppImages.cloud),
    );
  }
}
