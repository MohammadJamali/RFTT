// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_actor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionActor _$TransactionActorFromJson(Map<String, dynamic> json) {
  return _TransactionActor.fromJson(json);
}

/// @nodoc
mixin _$TransactionActor {
  @JsonKey(includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this TransactionActor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionActor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionActorCopyWith<TransactionActor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionActorCopyWith<$Res> {
  factory $TransactionActorCopyWith(
          TransactionActor value, $Res Function(TransactionActor) then) =
      _$TransactionActorCopyWithImpl<$Res, TransactionActor>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String? id, String type, String value});
}

/// @nodoc
class _$TransactionActorCopyWithImpl<$Res, $Val extends TransactionActor>
    implements $TransactionActorCopyWith<$Res> {
  _$TransactionActorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionActor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionActorImplCopyWith<$Res>
    implements $TransactionActorCopyWith<$Res> {
  factory _$$TransactionActorImplCopyWith(_$TransactionActorImpl value,
          $Res Function(_$TransactionActorImpl) then) =
      __$$TransactionActorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String? id, String type, String value});
}

/// @nodoc
class __$$TransactionActorImplCopyWithImpl<$Res>
    extends _$TransactionActorCopyWithImpl<$Res, _$TransactionActorImpl>
    implements _$$TransactionActorImplCopyWith<$Res> {
  __$$TransactionActorImplCopyWithImpl(_$TransactionActorImpl _value,
      $Res Function(_$TransactionActorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionActor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$TransactionActorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$TransactionActorImpl implements _TransactionActor {
  const _$TransactionActorImpl(
      {@JsonKey(includeToJson: false) this.id,
      required this.type,
      required this.value});

  factory _$TransactionActorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionActorImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String? id;
  @override
  final String type;
  @override
  final String value;

  @override
  String toString() {
    return 'TransactionActor(id: $id, type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionActorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, value);

  /// Create a copy of TransactionActor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionActorImplCopyWith<_$TransactionActorImpl> get copyWith =>
      __$$TransactionActorImplCopyWithImpl<_$TransactionActorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionActorImplToJson(
      this,
    );
  }
}

abstract class _TransactionActor implements TransactionActor {
  const factory _TransactionActor(
      {@JsonKey(includeToJson: false) final String? id,
      required final String type,
      required final String value}) = _$TransactionActorImpl;

  factory _TransactionActor.fromJson(Map<String, dynamic> json) =
      _$TransactionActorImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String? get id;
  @override
  String get type;
  @override
  String get value;

  /// Create a copy of TransactionActor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionActorImplCopyWith<_$TransactionActorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
