// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'community_state.dart';

class CommunityStateMapper extends ClassMapperBase<CommunityState> {
  CommunityStateMapper._();

  static CommunityStateMapper? _instance;
  static CommunityStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CommunityStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CommunityState';

  static bool _$isLoading(CommunityState v) => v.isLoading;
  static const Field<CommunityState, bool> _f$isLoading = Field(
    'isLoading',
    _$isLoading,
    opt: true,
    def: false,
  );
  static List<CommunityEntity> _$communities(CommunityState v) => v.communities;
  static const Field<CommunityState, List<CommunityEntity>> _f$communities =
      Field('communities', _$communities, opt: true, def: const []);

  @override
  final MappableFields<CommunityState> fields = const {
    #isLoading: _f$isLoading,
    #communities: _f$communities,
  };

  static CommunityState _instantiate(DecodingData data) {
    return CommunityState(
      isLoading: data.dec(_f$isLoading),
      communities: data.dec(_f$communities),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CommunityState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CommunityState>(map);
  }

  static CommunityState fromJson(String json) {
    return ensureInitialized().decodeJson<CommunityState>(json);
  }
}

mixin CommunityStateMappable {
  String toJson() {
    return CommunityStateMapper.ensureInitialized().encodeJson<CommunityState>(
      this as CommunityState,
    );
  }

  Map<String, dynamic> toMap() {
    return CommunityStateMapper.ensureInitialized().encodeMap<CommunityState>(
      this as CommunityState,
    );
  }

  CommunityStateCopyWith<CommunityState, CommunityState, CommunityState>
  get copyWith => _CommunityStateCopyWithImpl<CommunityState, CommunityState>(
    this as CommunityState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CommunityStateMapper.ensureInitialized().stringifyValue(
      this as CommunityState,
    );
  }

  @override
  bool operator ==(Object other) {
    return CommunityStateMapper.ensureInitialized().equalsValue(
      this as CommunityState,
      other,
    );
  }

  @override
  int get hashCode {
    return CommunityStateMapper.ensureInitialized().hashValue(
      this as CommunityState,
    );
  }
}

extension CommunityStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CommunityState, $Out> {
  CommunityStateCopyWith<$R, CommunityState, $Out> get $asCommunityState =>
      $base.as((v, t, t2) => _CommunityStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CommunityStateCopyWith<$R, $In extends CommunityState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CommunityEntity,
    ObjectCopyWith<$R, CommunityEntity, CommunityEntity>
  >
  get communities;
  $R call({bool? isLoading, List<CommunityEntity>? communities});
  CommunityStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CommunityStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CommunityState, $Out>
    implements CommunityStateCopyWith<$R, CommunityState, $Out> {
  _CommunityStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CommunityState> $mapper =
      CommunityStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CommunityEntity,
    ObjectCopyWith<$R, CommunityEntity, CommunityEntity>
  >
  get communities => ListCopyWith(
    $value.communities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(communities: v),
  );
  @override
  $R call({bool? isLoading, List<CommunityEntity>? communities}) => $apply(
    FieldCopyWithData({
      if (isLoading != null) #isLoading: isLoading,
      if (communities != null) #communities: communities,
    }),
  );
  @override
  CommunityState $make(CopyWithData data) => CommunityState(
    isLoading: data.get(#isLoading, or: $value.isLoading),
    communities: data.get(#communities, or: $value.communities),
  );

  @override
  CommunityStateCopyWith<$R2, CommunityState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CommunityStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

