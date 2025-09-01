import 'package:dart_mappable/dart_mappable.dart';
import 'package:fe_test_ayo/features/community/domain/entities/community_entity.dart';

part 'community_state.mapper.dart';

@MappableClass()
class CommunityState with CommunityStateMappable {
  final bool isLoading;
  final List<CommunityEntity> communities;

  const CommunityState({this.isLoading = false, this.communities = const []});

  static const initial = CommunityState();
}
