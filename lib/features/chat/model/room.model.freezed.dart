// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
mixin _$RoomModel {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool get hasUnreadMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res, RoomModel>;
  @useResult
  $Res call(
      {String id,
      String? title,
      DateTime createdAt,
      DateTime updatedAt,
      bool hasUnreadMessage});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res, $Val extends RoomModel>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? hasUnreadMessage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasUnreadMessage: null == hasUnreadMessage
          ? _value.hasUnreadMessage
          : hasUnreadMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomModelImplCopyWith<$Res>
    implements $RoomModelCopyWith<$Res> {
  factory _$$RoomModelImplCopyWith(
          _$RoomModelImpl value, $Res Function(_$RoomModelImpl) then) =
      __$$RoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? title,
      DateTime createdAt,
      DateTime updatedAt,
      bool hasUnreadMessage});
}

/// @nodoc
class __$$RoomModelImplCopyWithImpl<$Res>
    extends _$RoomModelCopyWithImpl<$Res, _$RoomModelImpl>
    implements _$$RoomModelImplCopyWith<$Res> {
  __$$RoomModelImplCopyWithImpl(
      _$RoomModelImpl _value, $Res Function(_$RoomModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? hasUnreadMessage = null,
  }) {
    return _then(_$RoomModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasUnreadMessage: null == hasUnreadMessage
          ? _value.hasUnreadMessage
          : hasUnreadMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RoomModelImpl extends _RoomModel with DiagnosticableTreeMixin {
  const _$RoomModelImpl(
      {required this.id,
      this.title,
      required this.createdAt,
      required this.updatedAt,
      this.hasUnreadMessage = false})
      : super._();

  factory _$RoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey()
  final bool hasUnreadMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomModel(id: $id, title: $title, createdAt: $createdAt, updatedAt: $updatedAt, hasUnreadMessage: $hasUnreadMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('hasUnreadMessage', hasUnreadMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.hasUnreadMessage, hasUnreadMessage) ||
                other.hasUnreadMessage == hasUnreadMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, createdAt, updatedAt, hasUnreadMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      __$$RoomModelImplCopyWithImpl<_$RoomModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomModelImplToJson(
      this,
    );
  }
}

abstract class _RoomModel extends RoomModel {
  const factory _RoomModel(
      {required final String id,
      final String? title,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final bool hasUnreadMessage}) = _$RoomModelImpl;
  const _RoomModel._() : super._();

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$RoomModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool get hasUnreadMessage;
  @override
  @JsonKey(ignore: true)
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
