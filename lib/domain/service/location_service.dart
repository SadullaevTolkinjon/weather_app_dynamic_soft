
import 'package:geolocator/geolocator.dart';

import '../model/location/location_model.dart';

class TashkentLocation extends AppLatLong {
  const TashkentLocation({
    super.lat = 41.311081,
    super.long = 69.240562,
  });
}

abstract class AppLocation {
  Future<AppLatLong> getCurrentLocation();
  Future<bool> requestPermission();
  Future<bool> checkPermission();
}

class LocationService implements AppLocation {
  final defLocation = const TashkentLocation();

  @override
  Future<AppLatLong> getCurrentLocation() async {
    return Geolocator.getCurrentPosition().then((value) {
      return AppLatLong(lat: value.latitude, long: value.longitude);
    }).catchError(
      (_) => defLocation,
    );
  }

  @override
  Future<bool> requestPermission() {
    return Geolocator.requestPermission()
        .then((value) =>
            value == LocationPermission.always ||
            value == LocationPermission.whileInUse)
        .catchError(
          (_) => false,
        );
  }

  @override
  Future<bool> checkPermission() {
    return Geolocator.checkPermission()
        .then((value) =>
            value == LocationPermission.always ||
            value == LocationPermission.whileInUse)
        .catchError(
          (_) => false,
        );
  }
}
