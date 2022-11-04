import 'package:flutter_cool_sample/common/models/trip.dart';

abstract class IUseCaseTrip {
  Future<List<Trip>> retrieveTrips();
  Future<Trip> updateTrip(Trip trip);
  Future<Trip> insertTrip(Trip trip);
  Future<bool> removeTrip(Trip trip);
}
