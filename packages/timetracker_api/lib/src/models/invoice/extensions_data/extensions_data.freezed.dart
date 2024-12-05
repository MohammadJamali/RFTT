// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extensions_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExtensionsData _$ExtensionsDataFromJson(Map<String, dynamic> json) {
  return _ExtensionsData.fromJson(json);
}

/// @nodoc
mixin _$ExtensionsData {
  String? get id => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  ExtensionDataParameter? get parameters => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this ExtensionsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtensionsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtensionsDataCopyWith<ExtensionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionsDataCopyWith<$Res> {
  factory $ExtensionsDataCopyWith(
          ExtensionsData value, $Res Function(ExtensionsData) then) =
      _$ExtensionsDataCopyWithImpl<$Res, ExtensionsData>;
  @useResult
  $Res call(
      {String? id,
      String? action,
      String? type,
      ExtensionDataParameter? parameters,
      String? version});

  $ExtensionDataParameterCopyWith<$Res>? get parameters;
}

/// @nodoc
class _$ExtensionsDataCopyWithImpl<$Res, $Val extends ExtensionsData>
    implements $ExtensionsDataCopyWith<$Res> {
  _$ExtensionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtensionsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
    Object? type = freezed,
    Object? parameters = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ExtensionDataParameter?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ExtensionsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtensionDataParameterCopyWith<$Res>? get parameters {
    if (_value.parameters == null) {
      return null;
    }

    return $ExtensionDataParameterCopyWith<$Res>(_value.parameters!, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExtensionsDataImplCopyWith<$Res>
    implements $ExtensionsDataCopyWith<$Res> {
  factory _$$ExtensionsDataImplCopyWith(_$ExtensionsDataImpl value,
          $Res Function(_$ExtensionsDataImpl) then) =
      __$$ExtensionsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? action,
      String? type,
      ExtensionDataParameter? parameters,
      String? version});

  @override
  $ExtensionDataParameterCopyWith<$Res>? get parameters;
}

/// @nodoc
class __$$ExtensionsDataImplCopyWithImpl<$Res>
    extends _$ExtensionsDataCopyWithImpl<$Res, _$ExtensionsDataImpl>
    implements _$$ExtensionsDataImplCopyWith<$Res> {
  __$$ExtensionsDataImplCopyWithImpl(
      _$ExtensionsDataImpl _value, $Res Function(_$ExtensionsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtensionsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
    Object? type = freezed,
    Object? parameters = freezed,
    Object? version = freezed,
  }) {
    return _then(_$ExtensionsDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ExtensionDataParameter?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtensionsDataImpl implements _ExtensionsData {
  const _$ExtensionsDataImpl(
      {this.id, this.action, this.type, this.parameters, this.version});

  factory _$ExtensionsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtensionsDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? action;
  @override
  final String? type;
  @override
  final ExtensionDataParameter? parameters;
  @override
  final String? version;

  @override
  String toString() {
    return 'ExtensionsData(id: $id, action: $action, type: $type, parameters: $parameters, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtensionsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, action, type, parameters, version);

  /// Create a copy of ExtensionsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtensionsDataImplCopyWith<_$ExtensionsDataImpl> get copyWith =>
      __$$ExtensionsDataImplCopyWithImpl<_$ExtensionsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtensionsDataImplToJson(
      this,
    );
  }
}

abstract class _ExtensionsData implements ExtensionsData {
  const factory _ExtensionsData(
      {final String? id,
      final String? action,
      final String? type,
      final ExtensionDataParameter? parameters,
      final String? version}) = _$ExtensionsDataImpl;

  factory _ExtensionsData.fromJson(Map<String, dynamic> json) =
      _$ExtensionsDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get action;
  @override
  String? get type;
  @override
  ExtensionDataParameter? get parameters;
  @override
  String? get version;

  /// Create a copy of ExtensionsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtensionsDataImplCopyWith<_$ExtensionsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
