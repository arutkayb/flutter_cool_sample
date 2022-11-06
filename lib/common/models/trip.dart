import 'package:equatable/equatable.dart';
import 'package:flutter_cool_sample/common/models/route_point.dart';

class Trip extends Equatable {
  final String id;
  final String name;
  final double rating;
  final String notes;
  final List<RoutePoint> routePoints;

  const Trip(this.id, this.name, this.rating, this.notes, this.routePoints)
      : super();

  factory Trip.copy(Trip trip) {
    return Trip(trip.id, trip.name, trip.rating, trip.notes, trip.routePoints);
  }

  @override
  List<Object> get props {
    return [id];
  }
}
