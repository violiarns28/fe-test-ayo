import 'package:fe_test_ayo/features/tournament/domain/repositories/tournament_repository.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TournamentCubit extends Cubit<TournamentState> {
  final ITournamentRepository _tournamentRepository;

  TournamentCubit(this._tournamentRepository) : super(TournamentState.initial);

  Future<void> fetchTournaments() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    try {
      final tournaments = await _tournamentRepository.getAll();
      emit(
        state.copyWith(
          isLoading: false,
          tournaments: tournaments,
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> fetchTournamentById(String id) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    try {
      final tournament = await _tournamentRepository.getById(id);
      emit(
        state.copyWith(
          isLoading: false,
          selectedTournament: tournament,
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  void clearSelectedTournament() {
    emit(state.copyWith(selectedTournament: null));
  }

  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }
}
