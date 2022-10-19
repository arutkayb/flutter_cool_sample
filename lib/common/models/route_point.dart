import 'package:flutter_cool_sample/common/models/geo_location.dart';
import 'package:flutter_cool_sample/common/models/weather_forecast.dart';

class RoutePoint {
  final int orderInTrip;
  final GeoLocation geoLocation;
  final List<WeatherForecast> weatherForecastList;
  final int routeStartDateMillis;

  RoutePoint(
    this.orderInTrip,
    this.geoLocation,
    this.weatherForecastList,
    this.routeStartDateMillis,
  );
}
