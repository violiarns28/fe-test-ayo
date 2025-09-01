import 'package:fe_test_ayo/features/tournament/data/repositories/tournament_repository.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TournamentCubit extends Cubit<TournamentState> {
  final TournamentRepository _tournamentRepository;

  TournamentCubit(this._tournamentRepository) : super(TournamentState.initial);

  Future<void> fetchTournaments() async {
    emit(state.copyWith(isLoading: true));
    final tournaments = await _tournamentRepository.getAll();
    emit(state.copyWith(isLoading: false, tournaments: tournaments));
  }
}
