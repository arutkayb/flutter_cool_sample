import 'package:flutter_cool_sample/common/data/local/i_local_data_manager.dart';
import 'package:flutter_cool_sample/common/models/geo_location.dart';
import 'package:flutter_cool_sample/common/models/route_point.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';
import 'package:sqflite/sqflite.dart';

class MockLocalDataManager implements ILocalDataManager {
  final List<Trip> _trips = List.generate(
    20,
    (index) => Trip(
      index.toString(),
      index.toString(),
      index.toDouble(),
      index.toString(),
      List.generate(
        5,
        (index2) => RoutePoint(
          index.toString(),
          GeoLocation(index.toString()),
          List.empty(),
          0,
        ),
      ),
    ),
  );

  @override
  Future<List<Trip>> retrieveTrips() {
    return Future.delayed(Duration.zero, () => _trips);
  }

  @override
  Future<Trip> insertTrip(Trip trip) {
    _trips.add(trip);
    return Future.delayed(Duration.zero, () => trip);
  }

  @override
  Future<bool> removeTrip(Trip trip) {
    final bool res = _trips.remove(trip);
    return Future.delayed(Duration.zero, () => res);
  }

  @override
  Future<Trip> updateTrip(Trip trip) {
    int index = _trips.indexWhere((element) => element == trip);
    if (index == -1) {
      throw Exception();
    } else if (index > -1) {
      _trips[index] = trip;
    }

    return Future.delayed(Duration.zero, () => trip);
  }
}
