import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/local/i_local_data_manager.dart';
import 'package:flutter_cool_sample/common/data/remote/i_remote_data_manager.dart';

class MockDataManager implements IDataManager {
  final ILocalDataManager _localDataManager;
  final IRemoteDataManager _remoteDataManager;

  MockDataManager(this._localDataManager, this._remoteDataManager);
}
