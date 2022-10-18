class EntityTrip {
  // primary key
  final String id;

  // secondary key
  final String userId;

  final String name;
  final double rating;
  final String notes;

  const EntityTrip({
    required this.id,
    required this.userId,
    required this.name,
    required this.rating,
    required this.notes,
  });
}
