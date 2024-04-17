import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/presentation/initial_screen/initial_screen_view.dart';

class InitialScreenPage extends StatelessWidget {
  const InitialScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InitialScreenView(),
    );
  }
}
