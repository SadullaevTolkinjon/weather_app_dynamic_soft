import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/presentation/home/components/bottom_nav_bar.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';
import 'package:weather_app_dynamic/presentation/home/home_view.dart';
import 'package:weather_app_dynamic/presentation/search/search_page.dart';
import 'package:weather_app_dynamic/utils/app_widgets/buildable.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Buildable<HomeCubit, HomeState, HomeBuildableState>(
        properties: (buildable) => [buildable.currentIndex],
        builder: (context, state) {
          return IndexedStack(
            index: state.currentIndex,
            children: const [
              HomeView(),
              SearchPage(),
            ],
          );
        },
      ),
      bottomNavigationBar: builtBottomBar(),
    );
  }
}
