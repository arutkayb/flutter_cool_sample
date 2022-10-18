import 'package:flutter_cool_sample/common/models/geo_location.dart';

class EntityRoutePoint {
  // primary key
  final String id;

  // secondary key
  final String tripId;

  final int orderInTrip;
  final GeoLocation geoLocation;
  final int routeStartDateMillis;

  EntityRoutePoint({
    required this.id,
    required this.tripId,
    required this.orderInTrip,
    required this.geoLocation,
    required this.routeStartDateMillis,
  });
}
