import 'package:fe_test_ayo/features/tournament/domain/repositories/tournament_repository.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TournamentCubit extends Cubit<TournamentState> {
  final ITournamentRepository _tournamentRepository;

  TournamentCubit(this._tournamentRepository) : super(TournamentState.initial);

  Future<void> fetchTournaments() async {
    emit(state.copyWith(isLoading: true));
    final tournaments = await _tournamentRepository.getAll();
    emit(state.copyWith(isLoading: false, tournaments: tournaments));
  }

  void fetchTournamentById(String id) async {
    emit(state.copyWith(isLoading: true));
    try {
      final tournaments = await _tournamentRepository.getById(id);
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
