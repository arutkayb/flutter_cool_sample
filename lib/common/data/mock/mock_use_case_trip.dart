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
    return Future.delayed(Duration.zero, () {
      return List.generate(
        5,
        (index) => Trip(
          index.toString(),
          index.toDouble(),
          index.toString(),
          List.generate(
            5,
            (index2) => RoutePoint(
              GeoLocation(),
              List.empty(),
              0,
            ),
          ),
        ),
      );
    });
  }
}
