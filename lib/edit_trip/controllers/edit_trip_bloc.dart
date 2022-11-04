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
          state.updateTrip(trip);
        } catch (e) {
          state.error();
        }

        emit(state);
      },
    );

    on<InsertTripEvent>(
      (event, emit) async {
        try {
          Trip trip = await _useCaseTrip.insertTrip(event.trip);
          state.updateTrip(trip);
        } catch (e) {
          state.error();
        }

        emit(state);
      },
    );

    on<RemoveTripEvent>(
      (event, emit) async {
        try {
          bool status = await _useCaseTrip.removeTrip(event.trip);
          if (status) {
            state.updateTrip(null);
          } else {
            state.error();
          }
        } catch (e) {
          state.error();
        }

        emit(state);
      },
    );
  }
}
