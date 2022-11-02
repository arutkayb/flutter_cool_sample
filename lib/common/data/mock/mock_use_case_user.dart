import 'package:flutter_cool_sample/common/data/i_data_manager.dart';
import 'package:flutter_cool_sample/common/data/use_cases/user/i_use_case_user.dart';

class MockUseCaseUser implements IUseCaseUser {
  final IDataManager _dataManager;

  MockUseCaseUser(this._dataManager);
}
