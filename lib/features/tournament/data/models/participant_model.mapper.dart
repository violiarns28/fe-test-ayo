// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'participant_model.dart';

class ParticipantModelMapper extends ClassMapperBase<ParticipantModel> {
  ParticipantModelMapper._();

  static ParticipantModelMapper? _instance;
  static ParticipantModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ParticipantModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ParticipantModel';
  @override
  Function get typeFactory =>
      <T>(f) => f<ParticipantModel<T>>();

  static const Field<ParticipantModel, dynamic> _f$isJoined = Field(
    'isJoined',
    null,
    mode: FieldMode.param,
  );
  static const Field<ParticipantModel, dynamic> _f$points = Field(
    'points',
    null,
    mode: FieldMode.param,
  );
  static const Field<ParticipantModel, dynamic> _f$rank = Field(
    'rank',
    null,
    mode: FieldMode.param,
  );
  static const Field<ParticipantModel, dynamic> _f$isRaising = Field(
    'isRaising',
    null,
    mode: FieldMode.param,
  );
  static const Field<ParticipantModel, dynamic> _f$participant = Field(
    'participant',
    null,
    mode: FieldMode.param,
  );

  @override
  final MappableFields<ParticipantModel> fields = const {
    #isJoined: _f$isJoined,
    #points: _f$points,
    #rank: _f$rank,
    #isRaising: _f$isRaising,
    #participant: _f$participant,
  };

  static ParticipantModel<T> _instantiate<T>(DecodingData data) {
    return ParticipantModel(
      isJoined: data.dec(_f$isJoined),
      points: data.dec(_f$points),
      rank: data.dec(_f$rank),
      isRaising: data.dec(_f$isRaising),
      participant: data.dec(_f$participant),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ParticipantModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ParticipantModel<T>>(map);
  }

  static ParticipantModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<ParticipantModel<T>>(json);
  }
}

mixin ParticipantModelMappable<T> {
  String toJson() {
    return ParticipantModelMapper.ensureInitialized()
        .encodeJson<ParticipantModel<T>>(this as ParticipantModel<T>);
  }

  Map<String, dynamic> toMap() {
    return ParticipantModelMapper.ensureInitialized()
        .encodeMap<ParticipantModel<T>>(this as ParticipantModel<T>);
  }

  ParticipantModelCopyWith<
    ParticipantModel<T>,
    ParticipantModel<T>,
    ParticipantModel<T>,
    T
  >
  get copyWith =>
      _ParticipantModelCopyWithImpl<
        ParticipantModel<T>,
        ParticipantModel<T>,
        T
      >(this as ParticipantModel<T>, $identity, $identity);
  @override
  String toString() {
    return ParticipantModelMapper.ensureInitialized().stringifyValue(
      this as ParticipantModel<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return ParticipantModelMapper.ensureInitialized().equalsValue(
      this as ParticipantModel<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return ParticipantModelMapper.ensureInitialized().hashValue(
      this as ParticipantModel<T>,
    );
  }
}

extension ParticipantModelValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, ParticipantModel<T>, $Out> {
  ParticipantModelCopyWith<$R, ParticipantModel<T>, $Out, T>
  get $asParticipantModel => $base.as(
    (v, t, t2) => _ParticipantModelCopyWithImpl<$R, $Out, T>(v, t, t2),
  );
}

abstract class ParticipantModelCopyWith<
  $R,
  $In extends ParticipantModel<T>,
  $Out,
  T
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    dynamic isJoined,
    dynamic points,
    dynamic rank,
    dynamic isRaising,
    dynamic participant,
  });
  ParticipantModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ParticipantModelCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, ParticipantModel<T>, $Out>
    implements ParticipantModelCopyWith<$R, ParticipantModel<T>, $Out, T> {
  _ParticipantModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ParticipantModel> $mapper =
      ParticipantModelMapper.ensureInitialized();
  @override
  $R call({
    dynamic isJoined,
    dynamic points,
    dynamic rank,
    dynamic isRaising,
    dynamic participant,
  }) => $apply(
    FieldCopyWithData({
      #isJoined: isJoined,
      #points: points,
      #rank: rank,
      #isRaising: isRaising,
      #participant: participant,
    }),
  );
  @override
  ParticipantModel<T> $make(CopyWithData data) => ParticipantModel(
    isJoined: data.get(#isJoined),
    points: data.get(#points),
    rank: data.get(#rank),
    isRaising: data.get(#isRaising),
    participant: data.get(#participant),
  );

  @override
  ParticipantModelCopyWith<$R2, ParticipantModel<T>, $Out2, T>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ParticipantModelCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

