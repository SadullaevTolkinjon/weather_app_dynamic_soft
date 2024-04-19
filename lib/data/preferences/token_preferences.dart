import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class TokenPreference {
  final SharedPreferences _sharedPreferences;
  TokenPreference(this._sharedPreferences);
  final String _key = "token";
  
  set(String value) async {
    await _sharedPreferences.setString(_key, value);
  }

  getToken() async {
    final apiKey = dotenv.env['OPENWEATHERMAP_API_KEY'];
    return apiKey;
  }
}
