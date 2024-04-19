import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DataModule{

  // ignore: invalid_annotation_target
  @preResolve
  Future<SharedPreferences> get prefs=> SharedPreferences.getInstance();
}