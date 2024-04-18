import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';
import 'package:weather_app_dynamic/presentation/home/home_view.dart';
import 'package:weather_app_dynamic/presentation/widgets/snacbar_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is HomeBuildableState) {
            
            if (state.failed == true) {
              SnackbarWidgets.showError("Something went wrong");
            }
          }
        },
        child: const HomeView(),
      ),
    );
  }
}
