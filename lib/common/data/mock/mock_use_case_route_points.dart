import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/use_cases/route_point/i_use_case_route_points.dart';

class MockUseCaseRoutePoint implements IUseCaseRoutePoint {
  final IDataManager _dataManager;

  MockUseCaseRoutePoint(this._dataManager);
}
