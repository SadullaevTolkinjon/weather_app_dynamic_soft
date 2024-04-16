import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class TokenPreference {
  final SharedPreferences _sharedPreferences;

  TokenPreference(this._sharedPreferences);
  final String _key = "token";
  final String _token = "4d64fa8fc55eb7e6bd10a7543870c357";
  set(String value) async {
    await _sharedPreferences.setString(_key, value);
  }

  getToken() async {
    return _token;
  }
}
