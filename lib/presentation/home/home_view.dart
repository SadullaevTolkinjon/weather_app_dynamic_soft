import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_dynamic/constants/images/app_images.dart';
import 'package:weather_app_dynamic/presentation/home/components/additionally_weather_data.dart';
import 'package:weather_app_dynamic/presentation/home/components/house_image.dart';
import 'package:weather_app_dynamic/presentation/home/components/weather_title.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

import '../../di/injection.dart';
import '../widgets/snacbar_widgets.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
        create: (context) {
          var cubit = locator<HomeCubit>();

          cubit.fetchCurrentWeather();
          return cubit;
        },
        child: BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is HomeBuildableState) {
              if (state.failed == true) {
                SnackbarWidgets.showError(state.error);
              }
              if (state.isConnected == true) {
                SnackbarWidgets.showError(state.error);
              }
              if (state.isConnected == true && state.noLocalData == true) {
                SnackbarWidgets.showError(state.error);
              }
            }
          },
          child:const HomeScreen()
        ),
      );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    context.read<HomeCubit>().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.background_image),
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              const HouseImage(),
              Positioned.fill(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      50.height,
                      const WeatherTitle(),
                      40.height,
                      const AdditionallyWidgets(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    
    );
  }
}
