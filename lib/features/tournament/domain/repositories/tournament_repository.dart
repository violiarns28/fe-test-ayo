import 'package:fe_test_ayo/features/tournament/domain/entities/tournament_entity.dart';

abstract class ITournamentRepository {
  Future<List<TournamentEntity>> getAll();
  Future<TournamentEntity> getById(String id);
}
