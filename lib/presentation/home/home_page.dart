import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';
import 'package:weather_app_dynamic/presentation/home/home_view.dart';
import 'package:weather_app_dynamic/presentation/widgets/buildable.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Buildable<HomeCubit, HomeState, HomeBuildableState>(
        properties: (buildable) => [
          buildable.error,
          buildable.loading,
          buildable.currentIndex,
          buildable.success
        ],
        builder: (context, state) {
          return const HomeView();
        },
      ),
    );
  }
}
