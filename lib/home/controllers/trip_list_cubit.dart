import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/home/controllers/trip_list_state.dart';
import 'package:flutter_cool_sample/injection.dart';

class TripListCubit extends Cubit<TripListState> {
  final IUseCaseTrip _useCaseTrip = locator.get<IUseCaseTrip>();

  TripListCubit(super.initialState);

  void fetchTrips() async {
    var trips = await _useCaseTrip.retrieveTrips();
    emit(TripListState(trips));
  }
}
