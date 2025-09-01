import 'package:fe_test_ayo/features/tournament/data/data_sources/local_tournament_data_source.dart';
import 'package:fe_test_ayo/features/tournament/data/models/tournament_model.dart';
import 'package:fe_test_ayo/features/tournament/domain/repositories/tournament_repository.dart';

class TournamentRepository<T> implements ITournamentRepository<T> {
  final LocalTournamentDataSource<T> localDataSource;

  TournamentRepository(this.localDataSource);

  @override
  Future<List<TournamentModel<T>>> getAll() {
    final tournamentModels = localDataSource.getAllTournaments();
    return Future.value(tournamentModels);
  }

  @override
  Future<TournamentModel<T>> getById(String id) {
    final tournamentModel = localDataSource.getTournamentById(id);
    if (tournamentModel != null) {
      return Future.value(tournamentModel);
    } else {
      return Future.error('Tournament not found');
    }
  }
}
