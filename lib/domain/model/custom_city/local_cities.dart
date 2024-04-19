import 'package:weather_app_dynamic/domain/model/location/location_model.dart';

class CustomCityModel {
  String? name;
  AppLatLong? location;
  CustomCityModel({required this.location, required this.name});
}
