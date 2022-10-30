class ApiConstants {
  static const String baseUrl = 'http://dataservice.accuweather.com/';
  static const String locationKey = 'locations/v1/cities/geoposition/search';
  static const String currentConditions = 'currentconditions/v1/{locationKey}';
  static const String fiveDayForecast =
      'forecasts/v1/daily/5day/{locationKey}/apikey={apiKey}';
  static const String hourylyForecast =
      'forecasts/v1/hourly/12hour/{locationKey}?apikey={apiKey}';
  static const String search =
      'locations/v1/cities/autocomplete?apikey={apiKey}&q={query}';
}
