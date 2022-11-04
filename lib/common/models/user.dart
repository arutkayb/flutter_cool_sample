import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String remoteId;

  const User(this.id, this.remoteId);

  @override
  List<Object> get props {
    return [id, remoteId];
  }
}
