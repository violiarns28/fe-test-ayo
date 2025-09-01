// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tournament_model.dart';

class TournamentModelMapper extends ClassMapperBase<TournamentModel> {
  TournamentModelMapper._();

  static TournamentModelMapper? _instance;
  static TournamentModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TournamentModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TournamentModel';
  @override
  Function get typeFactory =>
      <T>(f) => f<TournamentModel<T>>();

  static String _$id(TournamentModel v) => v.id;
  static const Field<TournamentModel, String> _f$id = Field('id', _$id);
  static String _$name(TournamentModel v) => v.name;
  static const Field<TournamentModel, String> _f$name = Field('name', _$name);
  static SportType _$sportType(TournamentModel v) => v.sportType;
  static const Field<TournamentModel, SportType> _f$sportType = Field(
    'sportType',
    _$sportType,
  );
  static DateTime _$startDate(TournamentModel v) => v.startDate;
  static const Field<TournamentModel, DateTime> _f$startDate = Field(
    'startDate',
    _$startDate,
  );
  static DateTime _$endDate(TournamentModel v) => v.endDate;
  static const Field<TournamentModel, DateTime> _f$endDate = Field(
    'endDate',
    _$endDate,
  );
  static List<ParticipantEntity<dynamic>> _$participants(TournamentModel v) =>
      v.participants;
  static dynamic _arg$participants<T>(f) => f<List<ParticipantEntity<T>>>();
  static const Field<TournamentModel, List<ParticipantEntity<dynamic>>>
  _f$participants = Field(
    'participants',
    _$participants,
    arg: _arg$participants,
  );

  @override
  final MappableFields<TournamentModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #sportType: _f$sportType,
    #startDate: _f$startDate,
    #endDate: _f$endDate,
    #participants: _f$participants,
  };

  static TournamentModel<T> _instantiate<T>(DecodingData data) {
    return TournamentModel(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      sportType: data.dec(_f$sportType),
      startDate: data.dec(_f$startDate),
      endDate: data.dec(_f$endDate),
      participants: data.dec(_f$participants),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TournamentModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TournamentModel<T>>(map);
  }

  static TournamentModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<TournamentModel<T>>(json);
  }
}

mixin TournamentModelMappable<T> {
  String toJson() {
    return TournamentModelMapper.ensureInitialized()
        .encodeJson<TournamentModel<T>>(this as TournamentModel<T>);
  }

  Map<String, dynamic> toMap() {
    return TournamentModelMapper.ensureInitialized()
        .encodeMap<TournamentModel<T>>(this as TournamentModel<T>);
  }

  TournamentModelCopyWith<
    TournamentModel<T>,
    TournamentModel<T>,
    TournamentModel<T>,
    T
  >
  get copyWith =>
      _TournamentModelCopyWithImpl<TournamentModel<T>, TournamentModel<T>, T>(
        this as TournamentModel<T>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TournamentModelMapper.ensureInitialized().stringifyValue(
      this as TournamentModel<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return TournamentModelMapper.ensureInitialized().equalsValue(
      this as TournamentModel<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return TournamentModelMapper.ensureInitialized().hashValue(
      this as TournamentModel<T>,
    );
  }
}

extension TournamentModelValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, TournamentModel<T>, $Out> {
  TournamentModelCopyWith<$R, TournamentModel<T>, $Out, T>
  get $asTournamentModel => $base.as(
    (v, t, t2) => _TournamentModelCopyWithImpl<$R, $Out, T>(v, t, t2),
  );
}

abstract class TournamentModelCopyWith<
  $R,
  $In extends TournamentModel<T>,
  $Out,
  T
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ParticipantEntity<T>,
    ObjectCopyWith<$R, ParticipantEntity<T>, ParticipantEntity<T>>
  >
  get participants;
  $R call({
    String? id,
    String? name,
    SportType? sportType,
    DateTime? startDate,
    DateTime? endDate,
    List<ParticipantEntity<T>>? participants,
  });
  TournamentModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TournamentModelCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, TournamentModel<T>, $Out>
    implements TournamentModelCopyWith<$R, TournamentModel<T>, $Out, T> {
  _TournamentModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TournamentModel> $mapper =
      TournamentModelMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ParticipantEntity<T>,
    ObjectCopyWith<$R, ParticipantEntity<T>, ParticipantEntity<T>>
  >
  get participants => ListCopyWith(
    $value.participants,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(participants: v),
  );
  @override
  $R call({
    String? id,
    String? name,
    SportType? sportType,
    DateTime? startDate,
    DateTime? endDate,
    List<ParticipantEntity<T>>? participants,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (sportType != null) #sportType: sportType,
      if (startDate != null) #startDate: startDate,
      if (endDate != null) #endDate: endDate,
      if (participants != null) #participants: participants,
    }),
  );
  @override
  TournamentModel<T> $make(CopyWithData data) => TournamentModel(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    sportType: data.get(#sportType, or: $value.sportType),
    startDate: data.get(#startDate, or: $value.startDate),
    endDate: data.get(#endDate, or: $value.endDate),
    participants: data.get(#participants, or: $value.participants),
  );

  @override
  TournamentModelCopyWith<$R2, TournamentModel<T>, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TournamentModelCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

