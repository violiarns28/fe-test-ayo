// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tournament_state.dart';

class TournamentStateMapper extends ClassMapperBase<TournamentState> {
  TournamentStateMapper._();

  static TournamentStateMapper? _instance;
  static TournamentStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TournamentStateMapper._());
      TournamentModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TournamentState';

  static bool _$isLoading(TournamentState v) => v.isLoading;
  static const Field<TournamentState, bool> _f$isLoading = Field(
    'isLoading',
    _$isLoading,
    opt: true,
    def: false,
  );
  static List<TournamentModel<dynamic>> _$tournaments(TournamentState v) =>
      v.tournaments;
  static const Field<TournamentState, List<TournamentModel<dynamic>>>
  _f$tournaments = Field(
    'tournaments',
    _$tournaments,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<TournamentState> fields = const {
    #isLoading: _f$isLoading,
    #tournaments: _f$tournaments,
  };

  static TournamentState _instantiate(DecodingData data) {
    return TournamentState(
      isLoading: data.dec(_f$isLoading),
      tournaments: data.dec(_f$tournaments),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TournamentState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TournamentState>(map);
  }

  static TournamentState fromJson(String json) {
    return ensureInitialized().decodeJson<TournamentState>(json);
  }
}

mixin TournamentStateMappable {
  String toJson() {
    return TournamentStateMapper.ensureInitialized()
        .encodeJson<TournamentState>(this as TournamentState);
  }

  Map<String, dynamic> toMap() {
    return TournamentStateMapper.ensureInitialized().encodeMap<TournamentState>(
      this as TournamentState,
    );
  }

  TournamentStateCopyWith<TournamentState, TournamentState, TournamentState>
  get copyWith =>
      _TournamentStateCopyWithImpl<TournamentState, TournamentState>(
        this as TournamentState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TournamentStateMapper.ensureInitialized().stringifyValue(
      this as TournamentState,
    );
  }

  @override
  bool operator ==(Object other) {
    return TournamentStateMapper.ensureInitialized().equalsValue(
      this as TournamentState,
      other,
    );
  }

  @override
  int get hashCode {
    return TournamentStateMapper.ensureInitialized().hashValue(
      this as TournamentState,
    );
  }
}

extension TournamentStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TournamentState, $Out> {
  TournamentStateCopyWith<$R, TournamentState, $Out> get $asTournamentState =>
      $base.as((v, t, t2) => _TournamentStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TournamentStateCopyWith<$R, $In extends TournamentState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    TournamentModel<dynamic>,
    TournamentModelCopyWith<
      $R,
      TournamentModel<dynamic>,
      TournamentModel<dynamic>,
      dynamic
    >
  >
  get tournaments;
  $R call({bool? isLoading, List<TournamentModel<dynamic>>? tournaments});
  TournamentStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TournamentStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TournamentState, $Out>
    implements TournamentStateCopyWith<$R, TournamentState, $Out> {
  _TournamentStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TournamentState> $mapper =
      TournamentStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    TournamentModel<dynamic>,
    TournamentModelCopyWith<
      $R,
      TournamentModel<dynamic>,
      TournamentModel<dynamic>,
      dynamic
    >
  >
  get tournaments => ListCopyWith(
    $value.tournaments,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(tournaments: v),
  );
  @override
  $R call({bool? isLoading, List<TournamentModel<dynamic>>? tournaments}) =>
      $apply(
        FieldCopyWithData({
          if (isLoading != null) #isLoading: isLoading,
          if (tournaments != null) #tournaments: tournaments,
        }),
      );
  @override
  TournamentState $make(CopyWithData data) => TournamentState(
    isLoading: data.get(#isLoading, or: $value.isLoading),
    tournaments: data.get(#tournaments, or: $value.tournaments),
  );

  @override
  TournamentStateCopyWith<$R2, TournamentState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TournamentStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

