import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/data/preferences/main_preference.dart';

import '../../constants/navigator/navigator_const.dart';
import '../../data/api/main_api.dart';

@Injectable()
class MainService {
  final MainApi _mainApi;
  final MainPreference _mainPreference;
  MainService(this._mainApi, this._mainPreference);

  fetchSavedBooks() async {
    final response = await _mainApi.fetchCurrentWeather();
    var data = jsonDecode(response.body);
    return data;
  }

  navigate(BuildContext ctx) async {
    var initialScreen = await _mainPreference.getinitialScreen();
    await Future.delayed(const Duration(milliseconds: 500));
    if (initialScreen == null) {
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(ctx, NavigatorConst.initialScreeen);
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(ctx, NavigatorConst.home);
    }
  }
}
