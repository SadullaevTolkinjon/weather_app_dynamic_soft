import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../data/api/main_api.dart';

@Injectable()
class MainService {
  final MainApi _mainApi;
  MainService(this._mainApi);

  fetchSavedBooks() async {
    final response = await _mainApi.fetchCurrentWeather();
    var data = jsonDecode(response.body);
    return data;
  }
}
