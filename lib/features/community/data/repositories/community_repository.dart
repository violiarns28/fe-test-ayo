import 'package:fe_test_ayo/features/community/data/data_sources/local_community_data_source.dart';
import 'package:fe_test_ayo/features/community/data/models/community_model.dart';
import 'package:fe_test_ayo/features/community/domain/repositories/community_repository.dart';

class CommunityRepository implements ICommunityRepository {
  final LocalCommunityDataSource localDataSource;

  CommunityRepository(this.localDataSource);

  @override
  Future<List<CommunityModel>> getAll() {
    final communityModels = localDataSource.getCommunities();
    return Future.value(communityModels.map((model) => model).toList());
  }

  @override
  Future<CommunityModel> getById(String id) {
    final communityModel = localDataSource.getCommunityById(id);
    return Future.value(communityModel);
  }
}
