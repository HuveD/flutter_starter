// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatUiState _$ChatUiStateFromJson(Map<String, dynamic> json) {
  return _ChatUiState.fromJson(json);
}

/// @nodoc
mixin _$ChatUiState {
  RoomModel get currentRoom => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatUiStateCopyWith<ChatUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUiStateCopyWith<$Res> {
  factory $ChatUiStateCopyWith(
          ChatUiState value, $Res Function(ChatUiState) then) =
      _$ChatUiStateCopyWithImpl<$Res, ChatUiState>;
  @useResult
  $Res call({RoomModel currentRoom, List<MessageModel> messages});

  $RoomModelCopyWith<$Res> get currentRoom;
}

/// @nodoc
class _$ChatUiStateCopyWithImpl<$Res, $Val extends ChatUiState>
    implements $ChatUiStateCopyWith<$Res> {
  _$ChatUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRoom = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      currentRoom: null == currentRoom
          ? _value.currentRoom
          : currentRoom // ignore: cast_nullable_to_non_nullable
              as RoomModel,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
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
abstract class _$$ChatUiStateImplCopyWith<$Res>
    implements $ChatUiStateCopyWith<$Res> {
  factory _$$ChatUiStateImplCopyWith(
          _$ChatUiStateImpl value, $Res Function(_$ChatUiStateImpl) then) =
      __$$ChatUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RoomModel currentRoom, List<MessageModel> messages});

  @override
  $RoomModelCopyWith<$Res> get currentRoom;
}

/// @nodoc
class __$$ChatUiStateImplCopyWithImpl<$Res>
    extends _$ChatUiStateCopyWithImpl<$Res, _$ChatUiStateImpl>
    implements _$$ChatUiStateImplCopyWith<$Res> {
  __$$ChatUiStateImplCopyWithImpl(
      _$ChatUiStateImpl _value, $Res Function(_$ChatUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRoom = null,
    Object? messages = null,
  }) {
    return _then(_$ChatUiStateImpl(
      currentRoom: null == currentRoom
          ? _value.currentRoom
          : currentRoom // ignore: cast_nullable_to_non_nullable
              as RoomModel,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChatUiStateImpl with DiagnosticableTreeMixin implements _ChatUiState {
  const _$ChatUiStateImpl(
      {required this.currentRoom, final List<MessageModel> messages = const []})
      : _messages = messages;

  factory _$ChatUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatUiStateImplFromJson(json);

  @override
  final RoomModel currentRoom;
  final List<MessageModel> _messages;
  @override
  @JsonKey()
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatUiState(currentRoom: $currentRoom, messages: $messages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatUiState'))
      ..add(DiagnosticsProperty('currentRoom', currentRoom))
      ..add(DiagnosticsProperty('messages', messages));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUiStateImpl &&
            (identical(other.currentRoom, currentRoom) ||
                other.currentRoom == currentRoom) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentRoom, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUiStateImplCopyWith<_$ChatUiStateImpl> get copyWith =>
      __$$ChatUiStateImplCopyWithImpl<_$ChatUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatUiStateImplToJson(
      this,
    );
  }
}

abstract class _ChatUiState implements ChatUiState {
  const factory _ChatUiState(
      {required final RoomModel currentRoom,
      final List<MessageModel> messages}) = _$ChatUiStateImpl;

  factory _ChatUiState.fromJson(Map<String, dynamic> json) =
      _$ChatUiStateImpl.fromJson;

  @override
  RoomModel get currentRoom;
  @override
  List<MessageModel> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ChatUiStateImplCopyWith<_$ChatUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
