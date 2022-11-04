import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/local/i_local_data_manager.dart';
import 'package:flutter_cool_sample/common/data/mock/mock_data_manager.dart';
import 'package:flutter_cool_sample/common/data/mock/mock_local_data_manager.dart';
import 'package:flutter_cool_sample/common/data/mock/mock_remote_data_manager.dart';
import 'package:flutter_cool_sample/common/data/mock/mock_use_case_route_points.dart';
import 'package:flutter_cool_sample/common/data/mock/mock_use_case_trip.dart';
import 'package:flutter_cool_sample/common/data/mock/mock_use_case_user.dart';
import 'package:flutter_cool_sample/common/data/remote/i_remote_data_manager.dart';
import 'package:flutter_cool_sample/common/data/use_cases/route_point/i_use_case_route_points.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/common/data/use_cases/user/i_use_case_user.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_bloc.dart';
import 'package:flutter_cool_sample/home/controllers/trip_list_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void configureDependencies() {
  locator.registerSingleton<ILocalDataManager>(MockLocalDataManager());
  locator.registerSingleton<IRemoteDataManager>(MockRemoteDataManager());

  locator.registerSingleton<IDataManager>(
    MockDataManager(
      locator.get<ILocalDataManager>(),
      locator.get<IRemoteDataManager>(),
    ),
  );

  locator.registerSingleton<IUseCaseUser>(
    MockUseCaseUser(
      locator.get<IDataManager>(),
    ),
  );
  locator.registerSingleton<IUseCaseRoutePoint>(
    MockUseCaseRoutePoint(
      locator.get<IDataManager>(),
    ),
  );
  locator.registerSingleton<IUseCaseTrip>(
    MockUseCaseTrip(
      locator.get<IDataManager>(),
    ),
  );

  locator.registerFactory(() => TripListCubit(List.empty()));
}
