import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/presentation/favorite/favorite_page.dart';
import 'package:weather_app_dynamic/presentation/home/home_view.dart';
import 'package:weather_app_dynamic/presentation/profile/profile_page.dart';

buildHomeUi(int index) {


  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const FavoritePapge();
    case 2:
      return const ProfilePage();
    default:
      return const SizedBox();
  }
}
