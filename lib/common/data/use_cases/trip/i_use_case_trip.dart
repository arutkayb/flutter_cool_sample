import 'package:flutter_cool_sample/common/models/trip.dart';

abstract class IUseCaseTrip {
  Future<List<Trip>> retrieveTrips();
}
