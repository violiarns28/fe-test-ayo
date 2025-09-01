import 'package:fe_test_ayo/features/community/data/repositories/community_repository.dart';

import 'package:fe_test_ayo/features/community/presentation/cubit/community_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommunityCubit extends Cubit<CommunityState> {
  final CommunityRepository _communityRepository;

  CommunityCubit(this._communityRepository) : super(CommunityState.initial);

  Future<void> loadCommunities() async {
    emit(state.copyWith(isLoading: true));
    final communities = await _communityRepository.getAll();
    emit(state.copyWith(isLoading: false, communities: communities));
  }
}
