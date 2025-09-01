import 'package:fe_test_ayo/features/user/data/data_sources/local_user_data_source.dart';
import 'package:fe_test_ayo/features/user/domain/entities/user_entity.dart';
import 'package:fe_test_ayo/features/user/domain/repositories/user_repository.dart';

class UserRepository implements IUserRepository {
  final LocalUserDataSource localDataSource;

  UserRepository(this.localDataSource);

  @override
  Future<List<UserEntity>> getAll() {
    final userModels = localDataSource.getUsers();
    return Future.value(userModels.map((model) => model).toList());
  }

  @override
  Future<UserEntity> getById(String id) {
    final userModel = localDataSource.getUserById(id);
    return Future.value(userModel);
  }
}
