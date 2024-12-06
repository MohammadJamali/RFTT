// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  String get network => throw _privateConstructorUsedError;
  CurrencyType get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  int get decimals => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  int get chainId => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  CurrencySymbol get symbol => throw _privateConstructorUsedError;

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call(
      {String network,
      CurrencyType type,
      String value,
      @JsonKey(includeToJson: false) String name,
      @JsonKey(includeToJson: false) int decimals,
      @JsonKey(includeToJson: false) int chainId,
      @JsonKey(includeToJson: false) CurrencySymbol symbol});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? type = null,
    Object? value = null,
    Object? name = null,
    Object? decimals = null,
    Object? chainId = null,
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as CurrencySymbol,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyImplCopyWith<$Res>
    implements $CurrencyCopyWith<$Res> {
  factory _$$CurrencyImplCopyWith(
          _$CurrencyImpl value, $Res Function(_$CurrencyImpl) then) =
      __$$CurrencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String network,
      CurrencyType type,
      String value,
      @JsonKey(includeToJson: false) String name,
      @JsonKey(includeToJson: false) int decimals,
      @JsonKey(includeToJson: false) int chainId,
      @JsonKey(includeToJson: false) CurrencySymbol symbol});
}

/// @nodoc
class __$$CurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CurrencyImpl>
    implements _$$CurrencyImplCopyWith<$Res> {
  __$$CurrencyImplCopyWithImpl(
      _$CurrencyImpl _value, $Res Function(_$CurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? type = null,
    Object? value = null,
    Object? name = null,
    Object? decimals = null,
    Object? chainId = null,
    Object? symbol = null,
  }) {
    return _then(_$CurrencyImpl(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as CurrencySymbol,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$CurrencyImpl implements _Currency {
  const _$CurrencyImpl(
      {required this.network,
      required this.type,
      required this.value,
      @JsonKey(includeToJson: false) required this.name,
      @JsonKey(includeToJson: false) required this.decimals,
      @JsonKey(includeToJson: false) required this.chainId,
      @JsonKey(includeToJson: false) required this.symbol});

  factory _$CurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyImplFromJson(json);

  @override
  final String network;
  @override
  final CurrencyType type;
  @override
  final String value;
  @override
  @JsonKey(includeToJson: false)
  final String name;
  @override
  @JsonKey(includeToJson: false)
  final int decimals;
  @override
  @JsonKey(includeToJson: false)
  final int chainId;
  @override
  @JsonKey(includeToJson: false)
  final CurrencySymbol symbol;

  @override
  String toString() {
    return 'Currency(network: $network, type: $type, value: $value, name: $name, decimals: $decimals, chainId: $chainId, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyImpl &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, network, type, value, name, decimals, chainId, symbol);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      __$$CurrencyImplCopyWithImpl<_$CurrencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyImplToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  const factory _Currency(
      {required final String network,
      required final CurrencyType type,
      required final String value,
      @JsonKey(includeToJson: false) required final String name,
      @JsonKey(includeToJson: false) required final int decimals,
      @JsonKey(includeToJson: false) required final int chainId,
      @JsonKey(includeToJson: false)
      required final CurrencySymbol symbol}) = _$CurrencyImpl;

  factory _Currency.fromJson(Map<String, dynamic> json) =
      _$CurrencyImpl.fromJson;

  @override
  String get network;
  @override
  CurrencyType get type;
  @override
  String get value;
  @override
  @JsonKey(includeToJson: false)
  String get name;
  @override
  @JsonKey(includeToJson: false)
  int get decimals;
  @override
  @JsonKey(includeToJson: false)
  int get chainId;
  @override
  @JsonKey(includeToJson: false)
  CurrencySymbol get symbol;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
