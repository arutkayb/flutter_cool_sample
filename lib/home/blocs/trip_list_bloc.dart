import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';
import 'package:flutter_cool_sample/injection.dart';

abstract class TripListEvent {}

class RetrieveTripsEvent extends TripListEvent {}

class TripListBloc extends Bloc<TripListEvent, List<Trip>> {
  final IUseCaseTrip _useCaseTrip = locator.get<IUseCaseTrip>();

  TripListBloc() : super(List.empty()) {
    on<RetrieveTripsEvent>(
      (trips, emit) async {
        var trips = await _useCaseTrip.retrieveTrips();
        emit(trips);
      },
    );
  }
}
