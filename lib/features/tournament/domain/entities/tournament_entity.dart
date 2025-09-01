import 'package:fe_test_ayo/features/tournament/domain/entities/participant_entity.dart';

enum SportType {
  badminton,
  squash,
  padel,
  miniSoccer,
  tennis,
  pingPong,
  pickleBall,
}

abstract class TournamentEntity<T> {
  final String id;
  final String name;
  final SportType sportType;
  final DateTime startDate;
  final DateTime endDate;
  final List<ParticipantEntity<T>> participants;

  const TournamentEntity({
    required this.id,
    required this.name,
    required this.sportType,
    required this.startDate,
    required this.endDate,
    required this.participants,
  });
}
