import 'package:flutter/material.dart';

import '../../../constants/images/app_images.dart';

class WeatherBottomSheet extends StatelessWidget {
  const WeatherBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      height: 500,
      width: double.infinity,
       decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.background_image),
          ),
        ),
      child: SingleChildScrollView(
        child: Column(
          
        ),
      ),
    );
  }
}
