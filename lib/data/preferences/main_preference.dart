import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class MainPreference {
  final SharedPreferences _sharedPreferences;
  MainPreference(this._sharedPreferences);
  final String _key = "initial_screen";
  setInitialScreen(int value) async {
    await _sharedPreferences.setInt(_key, value);
  }

  getinitialScreen() {
    return _sharedPreferences.getInt(_key);
  }
}
