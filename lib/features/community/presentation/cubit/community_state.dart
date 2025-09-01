import 'package:fe_test_ayo/features/community/data/models/community_model.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'community_state.mapper.dart';

@MappableClass()
class CommunityState with CommunityStateMappable {
  final bool isLoading;
  final List<CommunityModel> communities;

  const CommunityState({this.isLoading = false, this.communities = const []});

  static const initial = CommunityState();
}
