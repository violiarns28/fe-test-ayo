import 'package:fe_test_ayo/features/tournament/domain/entities/tournament_entity.dart';

abstract class ITournamentRepository<T> {
  Future<List<TournamentEntity<T>>> getAll();
  Future<TournamentEntity<T>> getById(String id);
}
