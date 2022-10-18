import 'package:flutter_cool_sample/common/models/geo_location.dart';

class EntityRoutePoint {
  // primary key
  final String id;

  // secondary key
  final String tripId;

  final int orderInTrip;
  final GeoLocation geoLocation;
  final int routeStartDateMillis;

  EntityRoutePoint(this.id, this.tripId, this.orderInTrip, this.geoLocation,
      this.routeStartDateMillis);
}
