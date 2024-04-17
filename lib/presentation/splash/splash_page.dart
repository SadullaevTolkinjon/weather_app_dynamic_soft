import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/di/injection.dart';
import 'package:weather_app_dynamic/domain/service/main_serivce.dart';
import 'package:weather_app_dynamic/presentation/initial_screen/components/logo.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    locator<MainService>().navigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBody(
        const Center(
          child: Logo(),
        ),
      ).build(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 60),
      ),
    );
  }
}
