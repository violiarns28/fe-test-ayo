import 'package:dart_mappable/dart_mappable.dart';
import 'package:fe_test_ayo/features/community/domain/entities/community_entity.dart';

part 'community_model.mapper.dart';

@MappableClass()
class CommunityModel extends CommunityEntity with CommunityModelMappable {
  const CommunityModel({
    required super.id,
    required super.name,
    required super.region,
    required super.image,
  });
}
