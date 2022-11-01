import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';

class UseCaseTrip implements IUseCaseTrip {
  final IDataManager _dataManager;

  UseCaseTrip(this._dataManager);
}
