import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';

class UseCaseTrip implements IUseCaseTrip {
  final IDataManager _dataManager;

  UseCaseTrip(this._dataManager);

  @override
  Future<Trip> insertTrip(Trip trip) {
    // TODO: implement insertTrip
    throw UnimplementedError();
  }

  @override
  Future<bool> removeTrip(Trip trip) {
    // TODO: implement removeTrip
    throw UnimplementedError();
  }

  @override
  Future<List<Trip>> retrieveTrips() {
    // TODO: implement retrieveTrips
    throw UnimplementedError();
  }

  @override
  Future<Trip> updateTrip(Trip trip) {
    // TODO: implement updateTrip
    throw UnimplementedError();
  }

}
