abstract class ParticipantEntity<T> {
  final bool isJoined;
  final int points;
  final int rank;
  final bool isRaising;
  final T participant;

  const ParticipantEntity({
    required this.isJoined,
    required this.points,
    required this.rank,
    required this.isRaising,
    required this.participant,
  });
}
