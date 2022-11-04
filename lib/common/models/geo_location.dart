import 'package:equatable/equatable.dart';

class GeoLocation extends Equatable {
  final String id;

  const GeoLocation(this.id); // TODO: wrap the geo location data here

  @override
  List<Object> get props {
    return [id];
  }
}
