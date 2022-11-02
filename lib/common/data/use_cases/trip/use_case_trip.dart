import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';

class UseCaseTrip implements IUseCaseTrip {
  final IDataManager _dataManager;

  UseCaseTrip(this._dataManager);

  @override
  Future<List<Trip>> retrieveTrips() {
    // TODO: implement retrieveTrips
    return Future.delayed(Duration.zero, () => List.empty());
  }
}
