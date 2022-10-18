class EntityTrip {
  // primary key
  final String id;

  // secondary key
  final String userId;

  final String name;
  final double rating;
  final String notes;

  const EntityTrip(this.id, this.userId, this.name, this.rating, this.notes);
}
