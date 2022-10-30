import 'package:geolocator/geolocator.dart';

class LocationUtils {
  static Future<bool> handleLocationPermission(
      {required Function(String) handleLocationError}) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      handleLocationError(
          'Location services are disabled. Please enable the services');
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        handleLocationError('Location permissions are denied');

        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      handleLocationError(
          'Location permissions are permanently denied, we cannot request permissions.');
      return false;
    }
    return true;
  }

  static Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
