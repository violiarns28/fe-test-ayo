import 'package:fe_test_ayo/features/user/domain/entities/user_entity.dart';

abstract class IUserRepository {
  Future<List<UserEntity>> getAll();
  Future<UserEntity> getById(String id);
}
