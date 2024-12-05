// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRequestOptions _$CreateRequestOptionsFromJson(Map<String, dynamic> json) {
  return _CreateRequestOptions.fromJson(json);
}

/// @nodoc
mixin _$CreateRequestOptions {
  bool? get skipRefresh => throw _privateConstructorUsedError;

  /// Serializes this CreateRequestOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateRequestOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRequestOptionsCopyWith<CreateRequestOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestOptionsCopyWith<$Res> {
  factory $CreateRequestOptionsCopyWith(CreateRequestOptions value,
          $Res Function(CreateRequestOptions) then) =
      _$CreateRequestOptionsCopyWithImpl<$Res, CreateRequestOptions>;
  @useResult
  $Res call({bool? skipRefresh});
}

/// @nodoc
class _$CreateRequestOptionsCopyWithImpl<$Res,
        $Val extends CreateRequestOptions>
    implements $CreateRequestOptionsCopyWith<$Res> {
  _$CreateRequestOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRequestOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skipRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      skipRefresh: freezed == skipRefresh
          ? _value.skipRefresh
          : skipRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRequestOptionsImplCopyWith<$Res>
    implements $CreateRequestOptionsCopyWith<$Res> {
  factory _$$CreateRequestOptionsImplCopyWith(_$CreateRequestOptionsImpl value,
          $Res Function(_$CreateRequestOptionsImpl) then) =
      __$$CreateRequestOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? skipRefresh});
}

/// @nodoc
class __$$CreateRequestOptionsImplCopyWithImpl<$Res>
    extends _$CreateRequestOptionsCopyWithImpl<$Res, _$CreateRequestOptionsImpl>
    implements _$$CreateRequestOptionsImplCopyWith<$Res> {
  __$$CreateRequestOptionsImplCopyWithImpl(_$CreateRequestOptionsImpl _value,
      $Res Function(_$CreateRequestOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateRequestOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skipRefresh = freezed,
  }) {
    return _then(_$CreateRequestOptionsImpl(
      skipRefresh: freezed == skipRefresh
          ? _value.skipRefresh
          : skipRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRequestOptionsImpl implements _CreateRequestOptions {
  const _$CreateRequestOptionsImpl({this.skipRefresh});

  factory _$CreateRequestOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRequestOptionsImplFromJson(json);

  @override
  final bool? skipRefresh;

  @override
  String toString() {
    return 'CreateRequestOptions(skipRefresh: $skipRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRequestOptionsImpl &&
            (identical(other.skipRefresh, skipRefresh) ||
                other.skipRefresh == skipRefresh));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, skipRefresh);

  /// Create a copy of CreateRequestOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRequestOptionsImplCopyWith<_$CreateRequestOptionsImpl>
      get copyWith =>
          __$$CreateRequestOptionsImplCopyWithImpl<_$CreateRequestOptionsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRequestOptionsImplToJson(
      this,
    );
  }
}

abstract class _CreateRequestOptions implements CreateRequestOptions {
  const factory _CreateRequestOptions({final bool? skipRefresh}) =
      _$CreateRequestOptionsImpl;

  factory _CreateRequestOptions.fromJson(Map<String, dynamic> json) =
      _$CreateRequestOptionsImpl.fromJson;

  @override
  bool? get skipRefresh;

  /// Create a copy of CreateRequestOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRequestOptionsImplCopyWith<_$CreateRequestOptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
