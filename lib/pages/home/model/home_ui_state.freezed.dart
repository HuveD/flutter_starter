// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeUiState _$HomeUiStateFromJson(Map<String, dynamic> json) {
  return _HomeUiState.fromJson(json);
}

/// @nodoc
mixin _$HomeUiState {
  RoomModel get currentRoom => throw _privateConstructorUsedError;
  List<RoomModel> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeUiStateCopyWith<HomeUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiStateCopyWith<$Res> {
  factory $HomeUiStateCopyWith(
          HomeUiState value, $Res Function(HomeUiState) then) =
      _$HomeUiStateCopyWithImpl<$Res, HomeUiState>;
  @useResult
  $Res call({RoomModel currentRoom, List<RoomModel> rooms});

  $RoomModelCopyWith<$Res> get currentRoom;
}

/// @nodoc
class _$HomeUiStateCopyWithImpl<$Res, $Val extends HomeUiState>
    implements $HomeUiStateCopyWith<$Res> {
  _$HomeUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRoom = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      currentRoom: null == currentRoom
          ? _value.currentRoom
          : currentRoom // ignore: cast_nullable_to_non_nullable
              as RoomModel,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomModelCopyWith<$Res> get currentRoom {
    return $RoomModelCopyWith<$Res>(_value.currentRoom, (value) {
      return _then(_value.copyWith(currentRoom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeUiStateImplCopyWith<$Res>
    implements $HomeUiStateCopyWith<$Res> {
  factory _$$HomeUiStateImplCopyWith(
          _$HomeUiStateImpl value, $Res Function(_$HomeUiStateImpl) then) =
      __$$HomeUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RoomModel currentRoom, List<RoomModel> rooms});

  @override
  $RoomModelCopyWith<$Res> get currentRoom;
}

/// @nodoc
class __$$HomeUiStateImplCopyWithImpl<$Res>
    extends _$HomeUiStateCopyWithImpl<$Res, _$HomeUiStateImpl>
    implements _$$HomeUiStateImplCopyWith<$Res> {
  __$$HomeUiStateImplCopyWithImpl(
      _$HomeUiStateImpl _value, $Res Function(_$HomeUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRoom = null,
    Object? rooms = null,
  }) {
    return _then(_$HomeUiStateImpl(
      currentRoom: null == currentRoom
          ? _value.currentRoom
          : currentRoom // ignore: cast_nullable_to_non_nullable
              as RoomModel,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$HomeUiStateImpl with DiagnosticableTreeMixin implements _HomeUiState {
  const _$HomeUiStateImpl(
      {required this.currentRoom, final List<RoomModel> rooms = const []})
      : _rooms = rooms;

  factory _$HomeUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeUiStateImplFromJson(json);

  @override
  final RoomModel currentRoom;
  final List<RoomModel> _rooms;
  @override
  @JsonKey()
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiState(currentRoom: $currentRoom, rooms: $rooms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeUiState'))
      ..add(DiagnosticsProperty('currentRoom', currentRoom))
      ..add(DiagnosticsProperty('rooms', rooms));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUiStateImpl &&
            (identical(other.currentRoom, currentRoom) ||
                other.currentRoom == currentRoom) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentRoom, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeUiStateImplCopyWith<_$HomeUiStateImpl> get copyWith =>
      __$$HomeUiStateImplCopyWithImpl<_$HomeUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeUiStateImplToJson(
      this,
    );
  }
}

abstract class _HomeUiState implements HomeUiState {
  const factory _HomeUiState(
      {required final RoomModel currentRoom,
      final List<RoomModel> rooms}) = _$HomeUiStateImpl;

  factory _HomeUiState.fromJson(Map<String, dynamic> json) =
      _$HomeUiStateImpl.fromJson;

  @override
  RoomModel get currentRoom;
  @override
  List<RoomModel> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$HomeUiStateImplCopyWith<_$HomeUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
