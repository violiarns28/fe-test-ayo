// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'community_model.dart';

class CommunityModelMapper extends ClassMapperBase<CommunityModel> {
  CommunityModelMapper._();

  static CommunityModelMapper? _instance;
  static CommunityModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CommunityModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CommunityModel';

  static String _$id(CommunityModel v) => v.id;
  static const Field<CommunityModel, String> _f$id = Field('id', _$id);
  static String _$name(CommunityModel v) => v.name;
  static const Field<CommunityModel, String> _f$name = Field('name', _$name);
  static String _$region(CommunityModel v) => v.region;
  static const Field<CommunityModel, String> _f$region = Field(
    'region',
    _$region,
  );
  static String _$image(CommunityModel v) => v.image;
  static const Field<CommunityModel, String> _f$image = Field('image', _$image);

  @override
  final MappableFields<CommunityModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #region: _f$region,
    #image: _f$image,
  };

  static CommunityModel _instantiate(DecodingData data) {
    return CommunityModel(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      region: data.dec(_f$region),
      image: data.dec(_f$image),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CommunityModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CommunityModel>(map);
  }

  static CommunityModel fromJson(String json) {
    return ensureInitialized().decodeJson<CommunityModel>(json);
  }
}

mixin CommunityModelMappable {
  String toJson() {
    return CommunityModelMapper.ensureInitialized().encodeJson<CommunityModel>(
      this as CommunityModel,
    );
  }

  Map<String, dynamic> toMap() {
    return CommunityModelMapper.ensureInitialized().encodeMap<CommunityModel>(
      this as CommunityModel,
    );
  }

  CommunityModelCopyWith<CommunityModel, CommunityModel, CommunityModel>
  get copyWith => _CommunityModelCopyWithImpl<CommunityModel, CommunityModel>(
    this as CommunityModel,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CommunityModelMapper.ensureInitialized().stringifyValue(
      this as CommunityModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return CommunityModelMapper.ensureInitialized().equalsValue(
      this as CommunityModel,
      other,
    );
  }

  @override
  int get hashCode {
    return CommunityModelMapper.ensureInitialized().hashValue(
      this as CommunityModel,
    );
  }
}

extension CommunityModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CommunityModel, $Out> {
  CommunityModelCopyWith<$R, CommunityModel, $Out> get $asCommunityModel =>
      $base.as((v, t, t2) => _CommunityModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CommunityModelCopyWith<$R, $In extends CommunityModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? region, String? image});
  CommunityModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CommunityModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CommunityModel, $Out>
    implements CommunityModelCopyWith<$R, CommunityModel, $Out> {
  _CommunityModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CommunityModel> $mapper =
      CommunityModelMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, String? region, String? image}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (region != null) #region: region,
      if (image != null) #image: image,
    }),
  );
  @override
  CommunityModel $make(CopyWithData data) => CommunityModel(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    region: data.get(#region, or: $value.region),
    image: data.get(#image, or: $value.image),
  );

  @override
  CommunityModelCopyWith<$R2, CommunityModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CommunityModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

