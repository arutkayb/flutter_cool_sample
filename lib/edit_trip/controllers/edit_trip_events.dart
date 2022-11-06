import 'package:flutter_cool_sample/common/models/trip.dart';

abstract class EditTripEvent {
  final Trip trip;

  EditTripEvent(this.trip);
}

class UpdateTripEvent extends EditTripEvent {
  UpdateTripEvent(Trip trip) : super(trip);
}

class InsertTripEvent extends EditTripEvent {
  InsertTripEvent(Trip trip) : super(trip);
}
