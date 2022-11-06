class EntityRoutePoint {
  // primary key
  final String id;

  // secondary key
  final String tripId;

  final int orderInTrip;
  final int routeStartDateMillis;

  const EntityRoutePoint({
    required this.id,
    required this.tripId,
    required this.orderInTrip,
    required this.routeStartDateMillis,
  });
}
