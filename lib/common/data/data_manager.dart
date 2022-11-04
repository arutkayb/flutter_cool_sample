import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/local/i_local_data_manager.dart';
import 'package:flutter_cool_sample/common/data/remote/i_remote_data_manager.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';

class DataManager implements IDataManager {
  final ILocalDataManager _localDataManager;
  final IRemoteDataManager _remoteDataManager;

  DataManager(this._localDataManager, this._remoteDataManager);

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
