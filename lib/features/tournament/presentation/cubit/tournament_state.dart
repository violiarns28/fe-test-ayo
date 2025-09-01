import 'package:dart_mappable/dart_mappable.dart';
import 'package:fe_test_ayo/features/tournament/data/models/tournament_model.dart';

part 'tournament_state.mapper.dart';

@MappableClass()
class TournamentState with TournamentStateMappable {
  final bool isLoading;
  final List<TournamentModel> tournaments;

  const TournamentState({this.isLoading = false, this.tournaments = const []});

  static const initial = TournamentState();
}
