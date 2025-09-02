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
  static List<TournamentEntity<dynamic>> _$tournaments(TournamentState v) =>
      v.tournaments;
  static const Field<TournamentState, List<TournamentEntity<dynamic>>>
  _f$tournaments = Field(
    'tournaments',
    _$tournaments,
    opt: true,
    def: const [],
  );
  static TournamentEntity<dynamic>? _$selectedTournament(TournamentState v) =>
      v.selectedTournament;
  static const Field<TournamentState, TournamentEntity<dynamic>>
  _f$selectedTournament = Field(
    'selectedTournament',
    _$selectedTournament,
    opt: true,
  );
  static String? _$errorMessage(TournamentState v) => v.errorMessage;
  static const Field<TournamentState, String> _f$errorMessage = Field(
    'errorMessage',
    _$errorMessage,
    opt: true,
  );

  @override
  final MappableFields<TournamentState> fields = const {
    #isLoading: _f$isLoading,
    #tournaments: _f$tournaments,
    #selectedTournament: _f$selectedTournament,
    #errorMessage: _f$errorMessage,
  };

  static TournamentState _instantiate(DecodingData data) {
    return TournamentState(
      isLoading: data.dec(_f$isLoading),
      tournaments: data.dec(_f$tournaments),
      selectedTournament: data.dec(_f$selectedTournament),
      errorMessage: data.dec(_f$errorMessage),
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
    TournamentEntity<dynamic>,
    ObjectCopyWith<$R, TournamentEntity<dynamic>, TournamentEntity<dynamic>>
  >
  get tournaments;
  $R call({
    bool? isLoading,
    List<TournamentEntity<dynamic>>? tournaments,
    TournamentEntity<dynamic>? selectedTournament,
    String? errorMessage,
  });
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
    TournamentEntity<dynamic>,
    ObjectCopyWith<$R, TournamentEntity<dynamic>, TournamentEntity<dynamic>>
  >
  get tournaments => ListCopyWith(
    $value.tournaments,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(tournaments: v),
  );
  @override
  $R call({
    bool? isLoading,
    List<TournamentEntity<dynamic>>? tournaments,
    Object? selectedTournament = $none,
    Object? errorMessage = $none,
  }) => $apply(
    FieldCopyWithData({
      if (isLoading != null) #isLoading: isLoading,
      if (tournaments != null) #tournaments: tournaments,
      if (selectedTournament != $none) #selectedTournament: selectedTournament,
      if (errorMessage != $none) #errorMessage: errorMessage,
    }),
  );
  @override
  TournamentState $make(CopyWithData data) => TournamentState(
    isLoading: data.get(#isLoading, or: $value.isLoading),
    tournaments: data.get(#tournaments, or: $value.tournaments),
    selectedTournament: data.get(
      #selectedTournament,
      or: $value.selectedTournament,
    ),
    errorMessage: data.get(#errorMessage, or: $value.errorMessage),
  );

  @override
  TournamentStateCopyWith<$R2, TournamentState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TournamentStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

