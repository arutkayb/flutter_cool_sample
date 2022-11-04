import 'package:flutter_cool_sample/common/data/local/i_local_data_manager.dart';
import 'package:flutter_cool_sample/common/data/remote/i_remote_data_manager.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';

abstract class IDataManager {
  Future<List<Trip>> retrieveTrips();

  Future<Trip> insertTrip(Trip trip);

  Future<bool> removeTrip(Trip trip);

  Future<Trip> updateTrip(Trip trip);
}
