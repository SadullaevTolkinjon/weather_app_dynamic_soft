import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/data/api/api.dart';
import 'package:weather_app_dynamic/data/preferences/token_preferences.dart';

@Injectable()
class MainApi {
  final Api _api;
  final TokenPreference _preference;
  MainApi(this._api, this._preference);
  Future<Response> fetchCurrentWeather() async {
    final params = {
      "lat": 41.311081,
      "lon": 69.240562,
      "exclude": "current",
      "appid": "aad4e73b86891194b52b8a7371f2eb6c"
    };
    var data = await _api.get(
      path: 'data/2.5/weather?q=London,uk&APPID=aad4e73b86891194b52b8a7371f2eb6c',
     
    );
    return data;
  }
}
