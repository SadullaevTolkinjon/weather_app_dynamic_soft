import 'package:weather_app_dynamic/domain/model/custom_city/local_cities.dart';
import 'package:weather_app_dynamic/domain/model/location/location_model.dart';

abstract class PermanentCities {
  List<CustomCityModel> getCities();
}

class PermanentDb extends PermanentCities {
  @override
  List<CustomCityModel> getCities() {
    return cities;
  }
}

List<CustomCityModel> cities = [
  CustomCityModel(
    name: "Toshkent",
    location: const AppLatLong(
      lat: 41.311081,
      long: 69.240562,
    ),
  ),
  CustomCityModel(
    name: "Namangan",
    location: const AppLatLong(
      lat: 41.0058,
      long: 71.6436,
    ),
  ),
  CustomCityModel(
    name: "Samarqand",
    location: const AppLatLong(
      lat: 39.6508,
      long: 66.9654,
    ),
  ),
  CustomCityModel(
    name: "Farg'ona",
    location: const AppLatLong(
      lat: 40.3734,
      long: 71.7978,
    ),
  ),
  CustomCityModel(
    name: "Andijon",
    location: const AppLatLong(
      lat: 40.8154,
      long: 72.2837,
    ),
  ),
  CustomCityModel(
    name: "Guliston",
    location: const AppLatLong(
      lat: 40.4915,
      long: 68.7811,
    ),
  ),
  CustomCityModel(
    name: "Jizzax",
    location: const AppLatLong(
      lat: 40.1250,
      long: 67.8808,
    ),
  ),
  CustomCityModel(
    name: "Qarshi",
    location: const AppLatLong(
      lat: 38.8612,
      long: 65.7847,
    ),
  ),
  CustomCityModel(
    name: "Termiz",
    location: const AppLatLong(
      lat: 37.2611,
      long: 67.3086,
    ),
  ),
  CustomCityModel(
    name: "Buxoro",
    location: const AppLatLong(
      lat: 39.7681,
      long: 64.4556,
    ),
  ),
  CustomCityModel(
    name: "Navoiy",
    location: const AppLatLong(
      lat: 40.0974,
      long: 65.3525,
    ),
  ),
  CustomCityModel(
    name: "Xorazm",
    location: const AppLatLong(
      lat: 41.3565,
      long: 60.8567,
    ),
  ),
  CustomCityModel(
    name: "Qoraqalpog'iston",
    location: const AppLatLong(
      lat: 44.7679,
      long: 56.1958,
    ),
  ),
  CustomCityModel(
    name: "Moskva",
    location: const AppLatLong(
      lat: 55.7558,
      long: 37.6173,
    ),
  ),
  CustomCityModel(
    name: "London",
    location: const AppLatLong(
      lat: 51.5072,
      long: 0.1276,
    ),
  ),
  CustomCityModel(
    name: "Berlin",
    location: const AppLatLong(
      lat: 52.5200,
      long: 13.4050,
    ),
  ),
  CustomCityModel(
    name: "New York",
    location: const AppLatLong(
      lat: 40.7128,
      long: 74.0060,
    ),
  ),
  CustomCityModel(
    name: "Astana",
    location: const AppLatLong(
      lat: 51.1655,
      long: 71.4272,
    ),
  ),
  CustomCityModel(
    name: "Qo'qon",
    location: const AppLatLong(
      lat: 40.5341,
      long: 70.9309,
    ),
  ),
  CustomCityModel(
    name: "Madrid",
    location: const AppLatLong(
      lat: 40.4168,
      long: 3.7038,
    ),
  ),
  CustomCityModel(
    name: "Parij",
    location: const AppLatLong(
      lat: 48.8566,
      long: 2.3522,
    ),
  ),
  CustomCityModel(
    name: "Sydney",
    location: const AppLatLong(
      lat: 33.8688,
      long: 151.2093,
    ),
  ),
  CustomCityModel(
    name: "Washington",
    location: const AppLatLong(
      lat: 47.7511,
      long: 120.7401,
    ),
  ),
  CustomCityModel(
    name: "Tokyo",
    location: const AppLatLong(
      lat: 35.6764,
      long: 139.6500,
    ),
  ),
  CustomCityModel(
    name: "Seul",
    location: const AppLatLong(
      lat: 37.5519,
      long: 126.9918,
    ),
  ),
];
