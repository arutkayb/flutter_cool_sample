import 'package:equatable/equatable.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';

class TripListState extends Equatable{
  final List<Trip> _trips;

  const TripListState(this._trips) : super();

  List<Trip> get trips => _trips;

  @override
  List<Object> get props {
    return [_trips];
  }
}
