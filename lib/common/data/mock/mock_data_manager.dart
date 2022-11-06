import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/local/i_local_data_manager.dart';
import 'package:flutter_cool_sample/common/data/remote/i_remote_data_manager.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';

class MockDataManager implements IDataManager {
  final ILocalDataManager _localDataManager;
  final IRemoteDataManager _remoteDataManager;

  MockDataManager(this._localDataManager, this._remoteDataManager);

  @override
  Future<Trip> insertTrip(Trip trip) {
    // TODO: implement insertTrip
    return _localDataManager.insertTrip(trip);
  }

  @override
  Future<bool> removeTrip(Trip trip) {
    // TODO: implement removeTrip
    return _localDataManager.removeTrip(trip);
  }

  @override
  Future<List<Trip>> retrieveTrips() {
    // TODO: implement retrieveTrips
    return _localDataManager.retrieveTrips();
  }

  @override
  Future<Trip> updateTrip(Trip trip) {
    return _localDataManager.updateTrip(trip);
  }
}
