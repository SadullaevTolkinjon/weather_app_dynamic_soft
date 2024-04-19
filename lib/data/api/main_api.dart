import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/data/api/api.dart';
import 'package:weather_app_dynamic/data/preferences/token_preferences.dart';

@Injectable()
class MainApi {
  final Api _api;
  final TokenPreference _preference;
  MainApi(this._api, this._preference);

  Future<Response> fetchCurrentWeather(
      double lat, double long, String exclude) async {
    final apikey = await _preference.getToken();
    final params = {
      "lat": lat,
      "lon": long,
      "units": "metric",
      "exclude": "weekly",
      "APPID": "$apikey",
    };
    var data = await _api.get(path: '/weather', params: params);
    return data;
  }

  Future<Response> fetchWeeklyWeather(double lat, double long) async {
    final apikey = await _preference.getToken();
    final params = {
      "lat": lat,
      "lon": long,
      "units": "metric",
      "cnt": 50,
      "APPID": "$apikey",
    };
    var data = await _api.get(path: 'forecast', params: params);
    return data;
  }
}
