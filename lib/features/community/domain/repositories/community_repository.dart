import 'package:fe_test_ayo/features/community/domain/entities/community_entity.dart';

abstract class ICommunityRepository {
  Future<List<CommunityEntity>> getAll();
  Future<CommunityEntity> getById(String id);
}
