// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_state.dart';

class UserStateMapper extends ClassMapperBase<UserState> {
  UserStateMapper._();

  static UserStateMapper? _instance;
  static UserStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserState';

  static bool _$isLoading(UserState v) => v.isLoading;
  static const Field<UserState, bool> _f$isLoading = Field(
    'isLoading',
    _$isLoading,
    opt: true,
    def: false,
  );
  static List<UserEntity> _$users(UserState v) => v.users;
  static const Field<UserState, List<UserEntity>> _f$users = Field(
    'users',
    _$users,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<UserState> fields = const {
    #isLoading: _f$isLoading,
    #users: _f$users,
  };

  static UserState _instantiate(DecodingData data) {
    return UserState(
      isLoading: data.dec(_f$isLoading),
      users: data.dec(_f$users),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserState>(map);
  }

  static UserState fromJson(String json) {
    return ensureInitialized().decodeJson<UserState>(json);
  }
}

mixin UserStateMappable {
  String toJson() {
    return UserStateMapper.ensureInitialized().encodeJson<UserState>(
      this as UserState,
    );
  }

  Map<String, dynamic> toMap() {
    return UserStateMapper.ensureInitialized().encodeMap<UserState>(
      this as UserState,
    );
  }

  UserStateCopyWith<UserState, UserState, UserState> get copyWith =>
      _UserStateCopyWithImpl<UserState, UserState>(
        this as UserState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserStateMapper.ensureInitialized().stringifyValue(
      this as UserState,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserStateMapper.ensureInitialized().equalsValue(
      this as UserState,
      other,
    );
  }

  @override
  int get hashCode {
    return UserStateMapper.ensureInitialized().hashValue(this as UserState);
  }
}

extension UserStateValueCopy<$R, $Out> on ObjectCopyWith<$R, UserState, $Out> {
  UserStateCopyWith<$R, UserState, $Out> get $asUserState =>
      $base.as((v, t, t2) => _UserStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserStateCopyWith<$R, $In extends UserState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, UserEntity, ObjectCopyWith<$R, UserEntity, UserEntity>>
  get users;
  $R call({bool? isLoading, List<UserEntity>? users});
  UserStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserState, $Out>
    implements UserStateCopyWith<$R, UserState, $Out> {
  _UserStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserState> $mapper =
      UserStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, UserEntity, ObjectCopyWith<$R, UserEntity, UserEntity>>
  get users => ListCopyWith(
    $value.users,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(users: v),
  );
  @override
  $R call({bool? isLoading, List<UserEntity>? users}) => $apply(
    FieldCopyWithData({
      if (isLoading != null) #isLoading: isLoading,
      if (users != null) #users: users,
    }),
  );
  @override
  UserState $make(CopyWithData data) => UserState(
    isLoading: data.get(#isLoading, or: $value.isLoading),
    users: data.get(#users, or: $value.users),
  );

  @override
  UserStateCopyWith<$R2, UserState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

