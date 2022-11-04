import 'package:flutter_cool_sample/common/models/trip.dart';

abstract class ILocalDataManager {
  Future<List<Trip>> retrieveTrips();

  Future<Trip> insertTrip(Trip trip);

  Future<bool> removeTrip(Trip trip);

  Future<Trip> updateTrip(Trip trip);
}
