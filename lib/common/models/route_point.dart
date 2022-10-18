import 'package:flutter_cool_sample/common/models/geo_location.dart';

class RoutePoint {
  final int orderInTrip;
  final GeoLocation geoLocation;
  final int routeStartDateMillis;

  RoutePoint(this.orderInTrip, this.geoLocation, this.routeStartDateMillis);
}
