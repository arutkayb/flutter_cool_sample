import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/common/models/geo_location.dart';
import 'package:flutter_cool_sample/common/models/route_point.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';

class MockUseCaseTrip implements IUseCaseTrip {
  final IDataManager _dataManager;

  MockUseCaseTrip(this._dataManager);

  @override
  Future<List<Trip>> retrieveTrips() {
    return _dataManager.retrieveTrips();
  }

  @override
  Future<Trip> insertTrip(Trip trip) {
    return _dataManager.insertTrip(trip);

  }

  @override
  Future<bool> removeTrip(Trip trip) {
    return _dataManager.removeTrip(trip);

  }

  @override
  Future<Trip> updateTrip(Trip trip) {
    return _dataManager.updateTrip(trip);
  }
}
