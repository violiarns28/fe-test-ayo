import 'package:dart_mappable/dart_mappable.dart';
import 'package:fe_test_ayo/features/tournament/domain/entities/participant_entity.dart ';

part 'participant_model.mapper.dart';

@MappableClass()
class ParticipantModel<T> extends ParticipantEntity<T>
    with ParticipantModelMappable<T> {
  ParticipantModel({
    required super.isJoined,
    required super.points,
    required super.rank,
    required super.isRaising,
    required super.participant,
  });
}
