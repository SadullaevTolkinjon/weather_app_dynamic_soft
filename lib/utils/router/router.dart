import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/constants/navigator/navigator_const.dart';
import 'package:weather_app_dynamic/presentation/home/home_page.dart';
import 'package:weather_app_dynamic/presentation/initial_screen/initial_page.dart';
import 'package:weather_app_dynamic/presentation/splash/splash_page.dart';

class OngenerateRoutes {
  static final OngenerateRoutes _instance = OngenerateRoutes._init();

  static OngenerateRoutes get instance => _instance;

  OngenerateRoutes._init();

  Route? routeGenerator(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case NavigatorConst.home:
        return sampleRoute(const HomePage());
      case NavigatorConst.initialScreeen:
        return sampleRoute(const InitialScreenPage());
      case NavigatorConst.splash:
        return sampleRoute(const SplashPage());
    }
    return null;
  }

  sampleRoute(Widget route) {
    return MaterialPageRoute(builder: (context) => route);
  }
}
