import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_dynamic/constants/navigator/navigator_const.dart';
import 'package:weather_app_dynamic/presentation/search/search_page.dart';
import 'package:weather_app_dynamic/utils/router/router.dart';
import 'package:weather_app_dynamic/utils/theme/main_theme.dart';

import 'domain/service/app/app_init.dart';

void main() async {
  await AppServiceInit().appInit();
  runApp(
    MultiBlocProvider(
      providers: AppProviders().mainAppProviders(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Havo ilmiy',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.light,
      // home: SearchPage(),
      onGenerateRoute: OngenerateRoutes.instance.routeGenerator,
      initialRoute: NavigatorConst.splash,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: child!,
        );
      },
    );
  }
}
