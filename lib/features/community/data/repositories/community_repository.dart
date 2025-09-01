import 'package:fe_test_ayo/features/community/data/data_sources/local_community_data_source.dart';
import 'package:fe_test_ayo/features/community/domain/entities/community_entity.dart';
import 'package:fe_test_ayo/features/community/domain/repositories/community_repository.dart';

class CommunityRepository implements ICommunityRepository {
  @override
  Future<List<CommunityEntity>> getAll() {
    final communityModels = LocalCommunityDataSource().getCommunities();
    return Future.value(communityModels.map((model) => model).toList());
  }

  @override
  Future<CommunityEntity> getById(String id) {
    final communityModel = LocalCommunityDataSource().getCommunityById(id);
    return Future.value(communityModel);
  }
}
