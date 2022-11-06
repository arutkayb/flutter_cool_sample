import 'package:equatable/equatable.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';

class EditTripState extends Equatable {
  final Trip _trip;

  const EditTripState(this._trip);

  Trip get trip => _trip;

  @override
  List<Object> get props {
    return [trip];
  }
}
