import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';

import '../../../utils/app_widgets/buildable.dart';

builtBottomBar() {
  return Buildable<HomeCubit, HomeState, HomeBuildableState>(
    properties: (buildable) => [buildable.currentIndex],
    builder: (context, state) {
      return BottomNavigationBar(
        currentIndex: state.currentIndex,
        backgroundColor:AppColor.kPrimaryColor2.withOpacity(0.5),
        selectedItemColor: AppColor.white,
        unselectedItemColor: AppColor.grey.withOpacity(0.3),
        onTap: (value) {
          BlocProvider.of<HomeCubit>(context, listen: false).changeTabs(value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Search"),
        ],
      );
    },
  );
}
