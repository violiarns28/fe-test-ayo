import 'package:dart_mappable/dart_mappable.dart';
import 'package:fe_test_ayo/features/tournament/domain/entities/participant_entity.dart';
import 'package:fe_test_ayo/features/tournament/domain/entities/tournament_entity.dart';

part 'tournament_model.mapper.dart';

@MappableClass()
class TournamentModel<T> extends TournamentEntity<T>
    with TournamentModelMappable<T> {
  TournamentModel({
    required super.id,
    required super.name,
    required super.sportType,
    required super.startDate,
    required super.endDate,
    required super.participants,
  });
}
