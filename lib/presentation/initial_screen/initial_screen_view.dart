import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/constants/app_texstyle/app_textstyle_const.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';
import 'package:weather_app_dynamic/constants/navigator/navigator_const.dart';
import 'package:weather_app_dynamic/data/preferences/main_preference.dart';
import 'package:weather_app_dynamic/di/injection.dart';
import 'package:weather_app_dynamic/presentation/initial_screen/components/logo.dart';
import 'package:weather_app_dynamic/presentation/widgets/custom_btn.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

class InitialScreenView extends StatelessWidget {
  const InitialScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBody(
      SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Logo(),
            20.height,
            Text(
              "Havo ilmiy",
              textAlign: TextAlign.center,
              style: AppTextStyle.s24.copyWith(
                fontSize: 64,
                color: AppColor.white,
              ),
            ),
            50.height,
            Custombtn(
              ontap: () async {
                await locator<MainPreference>().setInitialScreen(1).then(
                      (value) =>
                          Navigator.pushNamed(context, NavigatorConst.home),
                    );
              },
              height: 72,
              width: 304,
              title: "Get Start",
              color: AppColor.yellow,
              titleColor: AppColor.kPrimaryColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    ).build(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
    );
  }
}
