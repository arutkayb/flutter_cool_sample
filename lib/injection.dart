import 'package:flutter_cool_sample/common/data/data_manager.dart';
import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/local/i_local_data_manager.dart';
import 'package:flutter_cool_sample/common/data/local/local_data_manager.dart';
import 'package:flutter_cool_sample/common/data/remote/i_remote_data_manager.dart';
import 'package:flutter_cool_sample/common/data/remote/remote_data_manager.dart';
import 'package:flutter_cool_sample/common/data/use_cases/route_point/i_use_case_route_points.dart';
import 'package:flutter_cool_sample/common/data/use_cases/route_point/use_case_route_points.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/use_case_trip.dart';
import 'package:flutter_cool_sample/common/data/use_cases/user/i_use_case_user.dart';
import 'package:flutter_cool_sample/common/data/use_cases/user/use_case_user.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void configureDependencies() {
  locator.registerSingleton<ILocalDataManager>(LocalDataManager());
  locator.registerSingleton<IRemoteDataManager>(RemoteDataManager());

  locator.registerSingleton<IDataManager>(
    DataManager(
      locator.get<ILocalDataManager>(),
      locator.get<IRemoteDataManager>(),
    ),
  );

  locator.registerSingleton<IUseCaseUser>(
    UseCaseUser(
      locator.get<IDataManager>(),
    ),
  );
  locator.registerSingleton<IUseCaseRoutePoint>(
    UseCaseRoutePoint(
      locator.get<IDataManager>(),
    ),
  );
  locator.registerSingleton<IUseCaseTrip>(
    UseCaseTrip(
      locator.get<IDataManager>(),
    ),
  );
}
