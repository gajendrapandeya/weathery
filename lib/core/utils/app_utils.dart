import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:weathery/core/constants/app_constants.dart';
import 'package:weathery/core/data/dtos/country_dto.dart';
import 'package:weathery/core/domain/entities/country.dart';

class AppUtils {
  static Future<String> getLocationKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(AppConstants.locationKey) ?? '';
  }

  static Future<void> setLocationKey(String locationKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppConstants.locationKey, locationKey);
  }

  static Future<String> getLocationName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(AppConstants.locationName) ?? '';
  }

  static Future<void> setLocationName(String locationName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppConstants.locationName, locationName);
  }

  static Future<SharedPreferences> getSharedPref() async {
    return await SharedPreferences.getInstance();
  }

  static Future<void> clearSharedPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  static Future<void> setCountry(CountryDto country) async {
    final prefs = await getSharedPref();
    prefs.setString(AppConstants.country, jsonEncode(country.toJson()));
  }

  static Future<Country> getCountry() async {
    final prefs = await getSharedPref();
    final country = prefs.getString(AppConstants.country);
    if (country != null) {
      return CountryDto.fromJson(jsonDecode(country)).toDomain();
    } else {
      return const Country(id: '', name: '');
    }
  }
}
