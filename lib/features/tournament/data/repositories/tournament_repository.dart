import 'package:fe_test_ayo/features/tournament/data/data_sources/local_tournament_data_source.dart';
import 'package:fe_test_ayo/features/tournament/domain/entities/tournament_entity.dart';
import 'package:fe_test_ayo/features/tournament/domain/repositories/tournament_repository.dart';

class TournamentRepository implements ITournamentRepository {
  final LocalTournamentDataSource localDataSource;

  TournamentRepository(this.localDataSource);

  @override
  Future<List<TournamentEntity>> getAll() {
    final tournamentModels = localDataSource.getAllTournaments();
    return Future.value(tournamentModels);
  }

  @override
  Future<TournamentEntity> getById(String id) {
    final tournamentModel = localDataSource.getTournamentById(id);
    if (tournamentModel != null) {
      return Future.value(tournamentModel);
    } else {
      return Future.error('Tournament not found');
    }
  }
}
