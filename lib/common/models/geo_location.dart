import 'package:equatable/equatable.dart';

class GeoLocation extends Equatable {
  final String id;
  final String locationName;
  final double longitude;
  final double latitude;

  const GeoLocation(this.id, this.locationName, this.longitude, this.latitude);

  @override
  List<Object> get props {
    return [id, locationName];
  }
}
