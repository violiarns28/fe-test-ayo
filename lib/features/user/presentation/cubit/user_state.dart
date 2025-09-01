import 'package:dart_mappable/dart_mappable.dart';
import 'package:fe_test_ayo/features/user/data/models/user_model.dart';

part 'user_state.mapper.dart';

@MappableClass()
class UserState with UserStateMappable {
  final bool isLoading;
  final List<UserModel> users;

  const UserState({this.isLoading = false, this.users = const []});

  static const initial = UserState();
}
