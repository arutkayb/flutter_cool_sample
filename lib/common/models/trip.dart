import 'package:flutter_cool_sample/common/models/route_point.dart';

class Trip {
  final String name;
  final double rating;
  final String notes;
  final List<RoutePoint> routePoints;

  const Trip(this.name, this.rating, this.notes, this.routePoints);
}
