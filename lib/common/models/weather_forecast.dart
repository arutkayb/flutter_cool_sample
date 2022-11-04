import 'package:equatable/equatable.dart';

class WeatherForecast extends Equatable {
  final String id;

  const WeatherForecast(this.id); // TODO: wrap the weather forecast data here

  @override
  List<Object> get props {
    return [id];
  }
}
