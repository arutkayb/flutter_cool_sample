import 'package:equatable/equatable.dart';
import 'package:flutter_cool_sample/common/models/geo_location.dart';
import 'package:flutter_cool_sample/common/models/weather_forecast.dart';

class RoutePoint extends Equatable {
  final String id;
  final GeoLocation geoLocation;
  final List<WeatherForecast> weatherForecastList;
  final int routeStartDateMillis;

  const RoutePoint(
    this.id,
    this.geoLocation,
    this.weatherForecastList,
    this.routeStartDateMillis,
  );

  @override
  List<Object> get props {
    return [id];
  }
}
