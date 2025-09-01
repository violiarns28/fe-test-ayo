import 'package:dart_mappable/dart_mappable.dart';
import 'package:fe_test_ayo/features/user/domain/entities/user_entity.dart';

part 'user_model.mapper.dart';

@MappableClass()
class UserModel extends UserEntity with UserModelMappable {
  const UserModel({
    required super.id,
    required super.name,
    required super.username,
    required super.image,
  });
}
