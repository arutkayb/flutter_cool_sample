import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/common/data/use_cases/trip/i_use_case_trip.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';
import 'package:flutter_cool_sample/injection.dart';

class EditTripState {
  Trip? _trip;
  bool _lastEventStatus = true;

  EditTripState(this._trip);

  void updateTrip(Trip? trip) {
    _trip = trip;
    _lastEventStatus = true;
  }

  void error() {
    _lastEventStatus = false;
  }

  Trip? get trip => _trip;

  bool get lastEventStatus => _lastEventStatus;
}
