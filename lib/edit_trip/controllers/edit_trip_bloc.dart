import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_events.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_state.dart';
import 'package:flutter_cool_sample/injection.dart';

class EditTripBloc extends Bloc<EditTripEvent, EditTripState> {
  final IUseCaseTrip _useCaseTrip = locator.get<IUseCaseTrip>();

  EditTripBloc(super.initialState) {
    on<UpdateTripEvent>(
      (event, emit) async {
        try {
          Trip trip = await _useCaseTrip.updateTrip(event.trip);
          emit(EditTripState(trip));
        } catch (e) {
          // TODO:
        }
      },
    );

    on<InsertTripEvent>(
      (event, emit) async {
        try {
          Trip trip = await _useCaseTrip.insertTrip(event.trip);
          emit(EditTripState(trip));
        } catch (e) {
          // TODO:
        }
      },
    );
  }

  Future<bool> removeTrip() async {
    bool status = false;
    try {
      status = await _useCaseTrip.removeTrip(state.trip);
    } catch (e) {
      // TODO:
    }

    return status;
  }

  bool isChanged(Trip trip) {
    return trip != state.trip;
  }
}
