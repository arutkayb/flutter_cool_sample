class EntityGeoLocation {
  // primary key
  final String id;

  // secondary key
  final String routePointId;

  final String locationName;
  final double longitude;
  final double latitude;

  EntityGeoLocation(this.id, this.routePointId, this.locationName,
      this.longitude, this.latitude);
}
