import 'package:dart_mappable/dart_mappable.dart';
import 'package:fe_test_ayo/features/tournament/domain/entities/tournament_entity.dart';

part 'tournament_state.mapper.dart';

@MappableClass()
class TournamentState with TournamentStateMappable {
  final bool isLoading;
  final List<TournamentEntity> tournaments;
  final TournamentEntity? selectedTournament;
  final String? errorMessage;

  const TournamentState({
    this.isLoading = false,
    this.tournaments = const [],
    this.selectedTournament,
    this.errorMessage,
  });

  static const initial = TournamentState();
}
