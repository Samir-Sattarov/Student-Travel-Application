enum TripDurationType {
  week,
  month,
  days,
}

class TripsEntity {
  final String title;
  final String image;
  final String location;
  final int duration;
  final TripDurationType durationType;

  TripsEntity({
    required this.title,
    required this.image,
    required this.location,
    required this.duration,
    required this.durationType,
  });
}
