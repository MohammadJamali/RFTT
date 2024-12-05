// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentData _$ContentDataFromJson(Map<String, dynamic> json) {
  return _ContentData.fromJson(json);
}

/// @nodoc
mixin _$ContentData {
// '🍕'
  String? get reason => throw _privateConstructorUsedError; // '2023.06.16'
  String? get dueDate => throw _privateConstructorUsedError;
  String? get createdWith => throw _privateConstructorUsedError;
  String? get builderId => throw _privateConstructorUsedError;

  /// Serializes this ContentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentDataCopyWith<ContentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDataCopyWith<$Res> {
  factory $ContentDataCopyWith(
          ContentData value, $Res Function(ContentData) then) =
      _$ContentDataCopyWithImpl<$Res, ContentData>;
  @useResult
  $Res call(
      {String? reason,
      String? dueDate,
      String? createdWith,
      String? builderId});
}

/// @nodoc
class _$ContentDataCopyWithImpl<$Res, $Val extends ContentData>
    implements $ContentDataCopyWith<$Res> {
  _$ContentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? dueDate = freezed,
    Object? createdWith = freezed,
    Object? builderId = freezed,
  }) {
    return _then(_value.copyWith(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdWith: freezed == createdWith
          ? _value.createdWith
          : createdWith // ignore: cast_nullable_to_non_nullable
              as String?,
      builderId: freezed == builderId
          ? _value.builderId
          : builderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentDataImplCopyWith<$Res>
    implements $ContentDataCopyWith<$Res> {
  factory _$$ContentDataImplCopyWith(
          _$ContentDataImpl value, $Res Function(_$ContentDataImpl) then) =
      __$$ContentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? reason,
      String? dueDate,
      String? createdWith,
      String? builderId});
}

/// @nodoc
class __$$ContentDataImplCopyWithImpl<$Res>
    extends _$ContentDataCopyWithImpl<$Res, _$ContentDataImpl>
    implements _$$ContentDataImplCopyWith<$Res> {
  __$$ContentDataImplCopyWithImpl(
      _$ContentDataImpl _value, $Res Function(_$ContentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? dueDate = freezed,
    Object? createdWith = freezed,
    Object? builderId = freezed,
  }) {
    return _then(_$ContentDataImpl(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdWith: freezed == createdWith
          ? _value.createdWith
          : createdWith // ignore: cast_nullable_to_non_nullable
              as String?,
      builderId: freezed == builderId
          ? _value.builderId
          : builderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentDataImpl implements _ContentData {
  const _$ContentDataImpl(
      {this.reason, this.dueDate, this.createdWith, this.builderId});

  factory _$ContentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentDataImplFromJson(json);

// '🍕'
  @override
  final String? reason;
// '2023.06.16'
  @override
  final String? dueDate;
  @override
  final String? createdWith;
  @override
  final String? builderId;

  @override
  String toString() {
    return 'ContentData(reason: $reason, dueDate: $dueDate, createdWith: $createdWith, builderId: $builderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDataImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdWith, createdWith) ||
                other.createdWith == createdWith) &&
            (identical(other.builderId, builderId) ||
                other.builderId == builderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, dueDate, createdWith, builderId);

  /// Create a copy of ContentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDataImplCopyWith<_$ContentDataImpl> get copyWith =>
      __$$ContentDataImplCopyWithImpl<_$ContentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentDataImplToJson(
      this,
    );
  }
}

abstract class _ContentData implements ContentData {
  const factory _ContentData(
      {final String? reason,
      final String? dueDate,
      final String? createdWith,
      final String? builderId}) = _$ContentDataImpl;

  factory _ContentData.fromJson(Map<String, dynamic> json) =
      _$ContentDataImpl.fromJson;

// '🍕'
  @override
  String? get reason; // '2023.06.16'
  @override
  String? get dueDate;
  @override
  String? get createdWith;
  @override
  String? get builderId;

  /// Create a copy of ContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentDataImplCopyWith<_$ContentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
