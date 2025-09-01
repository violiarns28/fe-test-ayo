import 'package:fe_test_ayo/features/user/data/repositories/user_repository.dart';
import 'package:fe_test_ayo/features/user/presentation/cubit/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository _userRepository;

  UserCubit(this._userRepository) : super(UserState.initial);

  Future<void> fetchUsers() async {
    emit(state.copyWith(isLoading: true));
    final users = await _userRepository.getAll();
    emit(state.copyWith(isLoading: false, users: users));
  }
}