// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceTransactions _$InvoiceTransactionsFromJson(Map<String, dynamic> json) {
  return _InvoiceTransactions.fromJson(json);
}

/// @nodoc
mixin _$InvoiceTransactions {
  InvoiceTransactionMeta? get meta => throw _privateConstructorUsedError;
  InvoiceTransactionResult? get result => throw _privateConstructorUsedError;

  /// Serializes this InvoiceTransactions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceTransactions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceTransactionsCopyWith<InvoiceTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceTransactionsCopyWith<$Res> {
  factory $InvoiceTransactionsCopyWith(
          InvoiceTransactions value, $Res Function(InvoiceTransactions) then) =
      _$InvoiceTransactionsCopyWithImpl<$Res, InvoiceTransactions>;
  @useResult
  $Res call({InvoiceTransactionMeta? meta, InvoiceTransactionResult? result});

  $InvoiceTransactionMetaCopyWith<$Res>? get meta;
  $InvoiceTransactionResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$InvoiceTransactionsCopyWithImpl<$Res, $Val extends InvoiceTransactions>
    implements $InvoiceTransactionsCopyWith<$Res> {
  _$InvoiceTransactionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceTransactions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as InvoiceTransactionMeta?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as InvoiceTransactionResult?,
    ) as $Val);
  }

  /// Create a copy of InvoiceTransactions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceTransactionMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $InvoiceTransactionMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of InvoiceTransactions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceTransactionResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $InvoiceTransactionResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceTransactionsImplCopyWith<$Res>
    implements $InvoiceTransactionsCopyWith<$Res> {
  factory _$$InvoiceTransactionsImplCopyWith(_$InvoiceTransactionsImpl value,
          $Res Function(_$InvoiceTransactionsImpl) then) =
      __$$InvoiceTransactionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InvoiceTransactionMeta? meta, InvoiceTransactionResult? result});

  @override
  $InvoiceTransactionMetaCopyWith<$Res>? get meta;
  @override
  $InvoiceTransactionResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$InvoiceTransactionsImplCopyWithImpl<$Res>
    extends _$InvoiceTransactionsCopyWithImpl<$Res, _$InvoiceTransactionsImpl>
    implements _$$InvoiceTransactionsImplCopyWith<$Res> {
  __$$InvoiceTransactionsImplCopyWithImpl(_$InvoiceTransactionsImpl _value,
      $Res Function(_$InvoiceTransactionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceTransactions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? result = freezed,
  }) {
    return _then(_$InvoiceTransactionsImpl(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as InvoiceTransactionMeta?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as InvoiceTransactionResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceTransactionsImpl implements _InvoiceTransactions {
  const _$InvoiceTransactionsImpl({this.meta, this.result});

  factory _$InvoiceTransactionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceTransactionsImplFromJson(json);

  @override
  final InvoiceTransactionMeta? meta;
  @override
  final InvoiceTransactionResult? result;

  @override
  String toString() {
    return 'InvoiceTransactions(meta: $meta, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceTransactionsImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta, result);

  /// Create a copy of InvoiceTransactions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceTransactionsImplCopyWith<_$InvoiceTransactionsImpl> get copyWith =>
      __$$InvoiceTransactionsImplCopyWithImpl<_$InvoiceTransactionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceTransactionsImplToJson(
      this,
    );
  }
}

abstract class _InvoiceTransactions implements InvoiceTransactions {
  const factory _InvoiceTransactions(
      {final InvoiceTransactionMeta? meta,
      final InvoiceTransactionResult? result}) = _$InvoiceTransactionsImpl;

  factory _InvoiceTransactions.fromJson(Map<String, dynamic> json) =
      _$InvoiceTransactionsImpl.fromJson;

  @override
  InvoiceTransactionMeta? get meta;
  @override
  InvoiceTransactionResult? get result;

  /// Create a copy of InvoiceTransactions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceTransactionsImplCopyWith<_$InvoiceTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceTransactionMeta _$InvoiceTransactionMetaFromJson(
    Map<String, dynamic> json) {
  return _InvoiceTransactionMeta.fromJson(json);
}

/// @nodoc
mixin _$InvoiceTransactionMeta {
  List<String>? get transactionsStorageLocation =>
      throw _privateConstructorUsedError;
  List<dynamic>? get storageMeta => throw _privateConstructorUsedError;

  /// Serializes this InvoiceTransactionMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceTransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceTransactionMetaCopyWith<InvoiceTransactionMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceTransactionMetaCopyWith<$Res> {
  factory $InvoiceTransactionMetaCopyWith(InvoiceTransactionMeta value,
          $Res Function(InvoiceTransactionMeta) then) =
      _$InvoiceTransactionMetaCopyWithImpl<$Res, InvoiceTransactionMeta>;
  @useResult
  $Res call(
      {List<String>? transactionsStorageLocation, List<dynamic>? storageMeta});
}

/// @nodoc
class _$InvoiceTransactionMetaCopyWithImpl<$Res,
        $Val extends InvoiceTransactionMeta>
    implements $InvoiceTransactionMetaCopyWith<$Res> {
  _$InvoiceTransactionMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceTransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionsStorageLocation = freezed,
    Object? storageMeta = freezed,
  }) {
    return _then(_value.copyWith(
      transactionsStorageLocation: freezed == transactionsStorageLocation
          ? _value.transactionsStorageLocation
          : transactionsStorageLocation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      storageMeta: freezed == storageMeta
          ? _value.storageMeta
          : storageMeta // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceTransactionMetaImplCopyWith<$Res>
    implements $InvoiceTransactionMetaCopyWith<$Res> {
  factory _$$InvoiceTransactionMetaImplCopyWith(
          _$InvoiceTransactionMetaImpl value,
          $Res Function(_$InvoiceTransactionMetaImpl) then) =
      __$$InvoiceTransactionMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? transactionsStorageLocation, List<dynamic>? storageMeta});
}

/// @nodoc
class __$$InvoiceTransactionMetaImplCopyWithImpl<$Res>
    extends _$InvoiceTransactionMetaCopyWithImpl<$Res,
        _$InvoiceTransactionMetaImpl>
    implements _$$InvoiceTransactionMetaImplCopyWith<$Res> {
  __$$InvoiceTransactionMetaImplCopyWithImpl(
      _$InvoiceTransactionMetaImpl _value,
      $Res Function(_$InvoiceTransactionMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceTransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionsStorageLocation = freezed,
    Object? storageMeta = freezed,
  }) {
    return _then(_$InvoiceTransactionMetaImpl(
      transactionsStorageLocation: freezed == transactionsStorageLocation
          ? _value._transactionsStorageLocation
          : transactionsStorageLocation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      storageMeta: freezed == storageMeta
          ? _value._storageMeta
          : storageMeta // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceTransactionMetaImpl implements _InvoiceTransactionMeta {
  const _$InvoiceTransactionMetaImpl(
      {final List<String>? transactionsStorageLocation,
      final List<dynamic>? storageMeta})
      : _transactionsStorageLocation = transactionsStorageLocation,
        _storageMeta = storageMeta;

  factory _$InvoiceTransactionMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceTransactionMetaImplFromJson(json);

  final List<String>? _transactionsStorageLocation;
  @override
  List<String>? get transactionsStorageLocation {
    final value = _transactionsStorageLocation;
    if (value == null) return null;
    if (_transactionsStorageLocation is EqualUnmodifiableListView)
      return _transactionsStorageLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _storageMeta;
  @override
  List<dynamic>? get storageMeta {
    final value = _storageMeta;
    if (value == null) return null;
    if (_storageMeta is EqualUnmodifiableListView) return _storageMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceTransactionMeta(transactionsStorageLocation: $transactionsStorageLocation, storageMeta: $storageMeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceTransactionMetaImpl &&
            const DeepCollectionEquality().equals(
                other._transactionsStorageLocation,
                _transactionsStorageLocation) &&
            const DeepCollectionEquality()
                .equals(other._storageMeta, _storageMeta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactionsStorageLocation),
      const DeepCollectionEquality().hash(_storageMeta));

  /// Create a copy of InvoiceTransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceTransactionMetaImplCopyWith<_$InvoiceTransactionMetaImpl>
      get copyWith => __$$InvoiceTransactionMetaImplCopyWithImpl<
          _$InvoiceTransactionMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceTransactionMetaImplToJson(
      this,
    );
  }
}

abstract class _InvoiceTransactionMeta implements InvoiceTransactionMeta {
  const factory _InvoiceTransactionMeta(
      {final List<String>? transactionsStorageLocation,
      final List<dynamic>? storageMeta}) = _$InvoiceTransactionMetaImpl;

  factory _InvoiceTransactionMeta.fromJson(Map<String, dynamic> json) =
      _$InvoiceTransactionMetaImpl.fromJson;

  @override
  List<String>? get transactionsStorageLocation;
  @override
  List<dynamic>? get storageMeta;

  /// Create a copy of InvoiceTransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceTransactionMetaImplCopyWith<_$InvoiceTransactionMetaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceTransactionResult _$InvoiceTransactionResultFromJson(
    Map<String, dynamic> json) {
  return _InvoiceTransactionResult.fromJson(json);
}

/// @nodoc
mixin _$InvoiceTransactionResult {
  List<TransactionItem>? get transactions => throw _privateConstructorUsedError;

  /// Serializes this InvoiceTransactionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceTransactionResultCopyWith<InvoiceTransactionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceTransactionResultCopyWith<$Res> {
  factory $InvoiceTransactionResultCopyWith(InvoiceTransactionResult value,
          $Res Function(InvoiceTransactionResult) then) =
      _$InvoiceTransactionResultCopyWithImpl<$Res, InvoiceTransactionResult>;
  @useResult
  $Res call({List<TransactionItem>? transactions});
}

/// @nodoc
class _$InvoiceTransactionResultCopyWithImpl<$Res,
        $Val extends InvoiceTransactionResult>
    implements $InvoiceTransactionResultCopyWith<$Res> {
  _$InvoiceTransactionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: freezed == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceTransactionResultImplCopyWith<$Res>
    implements $InvoiceTransactionResultCopyWith<$Res> {
  factory _$$InvoiceTransactionResultImplCopyWith(
          _$InvoiceTransactionResultImpl value,
          $Res Function(_$InvoiceTransactionResultImpl) then) =
      __$$InvoiceTransactionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionItem>? transactions});
}

/// @nodoc
class __$$InvoiceTransactionResultImplCopyWithImpl<$Res>
    extends _$InvoiceTransactionResultCopyWithImpl<$Res,
        _$InvoiceTransactionResultImpl>
    implements _$$InvoiceTransactionResultImplCopyWith<$Res> {
  __$$InvoiceTransactionResultImplCopyWithImpl(
      _$InvoiceTransactionResultImpl _value,
      $Res Function(_$InvoiceTransactionResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(_$InvoiceTransactionResultImpl(
      transactions: freezed == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceTransactionResultImpl implements _InvoiceTransactionResult {
  const _$InvoiceTransactionResultImpl(
      {final List<TransactionItem>? transactions})
      : _transactions = transactions;

  factory _$InvoiceTransactionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceTransactionResultImplFromJson(json);

  final List<TransactionItem>? _transactions;
  @override
  List<TransactionItem>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceTransactionResult(transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceTransactionResultImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of InvoiceTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceTransactionResultImplCopyWith<_$InvoiceTransactionResultImpl>
      get copyWith => __$$InvoiceTransactionResultImplCopyWithImpl<
          _$InvoiceTransactionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceTransactionResultImplToJson(
      this,
    );
  }
}

abstract class _InvoiceTransactionResult implements InvoiceTransactionResult {
  const factory _InvoiceTransactionResult(
          {final List<TransactionItem>? transactions}) =
      _$InvoiceTransactionResultImpl;

  factory _InvoiceTransactionResult.fromJson(Map<String, dynamic> json) =
      _$InvoiceTransactionResultImpl.fromJson;

  @override
  List<TransactionItem>? get transactions;

  /// Create a copy of InvoiceTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceTransactionResultImplCopyWith<_$InvoiceTransactionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionItem _$TransactionItemFromJson(Map<String, dynamic> json) {
  return _TransactionItem.fromJson(json);
}

/// @nodoc
mixin _$TransactionItem {
  InvoiceState? get state => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  InvoiceTransactionData? get transaction => throw _privateConstructorUsedError;

  /// Serializes this TransactionItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionItemCopyWith<TransactionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionItemCopyWith<$Res> {
  factory $TransactionItemCopyWith(
          TransactionItem value, $Res Function(TransactionItem) then) =
      _$TransactionItemCopyWithImpl<$Res, TransactionItem>;
  @useResult
  $Res call(
      {InvoiceState? state,
      int? timestamp,
      InvoiceTransactionData? transaction});

  $InvoiceTransactionDataCopyWith<$Res>? get transaction;
}

/// @nodoc
class _$TransactionItemCopyWithImpl<$Res, $Val extends TransactionItem>
    implements $TransactionItemCopyWith<$Res> {
  _$TransactionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? timestamp = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as InvoiceState?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as InvoiceTransactionData?,
    ) as $Val);
  }

  /// Create a copy of TransactionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceTransactionDataCopyWith<$Res>? get transaction {
    if (_value.transaction == null) {
      return null;
    }

    return $InvoiceTransactionDataCopyWith<$Res>(_value.transaction!, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionItemImplCopyWith<$Res>
    implements $TransactionItemCopyWith<$Res> {
  factory _$$TransactionItemImplCopyWith(_$TransactionItemImpl value,
          $Res Function(_$TransactionItemImpl) then) =
      __$$TransactionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InvoiceState? state,
      int? timestamp,
      InvoiceTransactionData? transaction});

  @override
  $InvoiceTransactionDataCopyWith<$Res>? get transaction;
}

/// @nodoc
class __$$TransactionItemImplCopyWithImpl<$Res>
    extends _$TransactionItemCopyWithImpl<$Res, _$TransactionItemImpl>
    implements _$$TransactionItemImplCopyWith<$Res> {
  __$$TransactionItemImplCopyWithImpl(
      _$TransactionItemImpl _value, $Res Function(_$TransactionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? timestamp = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$TransactionItemImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as InvoiceState?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as InvoiceTransactionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionItemImpl implements _TransactionItem {
  const _$TransactionItemImpl({this.state, this.timestamp, this.transaction});

  factory _$TransactionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionItemImplFromJson(json);

  @override
  final InvoiceState? state;
  @override
  final int? timestamp;
  @override
  final InvoiceTransactionData? transaction;

  @override
  String toString() {
    return 'TransactionItem(state: $state, timestamp: $timestamp, transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionItemImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state, timestamp, transaction);

  /// Create a copy of TransactionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionItemImplCopyWith<_$TransactionItemImpl> get copyWith =>
      __$$TransactionItemImplCopyWithImpl<_$TransactionItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionItemImplToJson(
      this,
    );
  }
}

abstract class _TransactionItem implements TransactionItem {
  const factory _TransactionItem(
      {final InvoiceState? state,
      final int? timestamp,
      final InvoiceTransactionData? transaction}) = _$TransactionItemImpl;

  factory _TransactionItem.fromJson(Map<String, dynamic> json) =
      _$TransactionItemImpl.fromJson;

  @override
  InvoiceState? get state;
  @override
  int? get timestamp;
  @override
  InvoiceTransactionData? get transaction;

  /// Create a copy of TransactionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionItemImplCopyWith<_$TransactionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceTransactionData _$InvoiceTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _InvoiceTransactionData.fromJson(json);
}

/// @nodoc
mixin _$InvoiceTransactionData {
  TransactionDetail? get data => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this InvoiceTransactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceTransactionDataCopyWith<InvoiceTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceTransactionDataCopyWith<$Res> {
  factory $InvoiceTransactionDataCopyWith(InvoiceTransactionData value,
          $Res Function(InvoiceTransactionData) then) =
      _$InvoiceTransactionDataCopyWithImpl<$Res, InvoiceTransactionData>;
  @useResult
  $Res call({TransactionDetail? data, String? version});

  $TransactionDetailCopyWith<$Res>? get data;
}

/// @nodoc
class _$InvoiceTransactionDataCopyWithImpl<$Res,
        $Val extends InvoiceTransactionData>
    implements $InvoiceTransactionDataCopyWith<$Res> {
  _$InvoiceTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDetail?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of InvoiceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionDetailCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionDetailCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceTransactionDataImplCopyWith<$Res>
    implements $InvoiceTransactionDataCopyWith<$Res> {
  factory _$$InvoiceTransactionDataImplCopyWith(
          _$InvoiceTransactionDataImpl value,
          $Res Function(_$InvoiceTransactionDataImpl) then) =
      __$$InvoiceTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransactionDetail? data, String? version});

  @override
  $TransactionDetailCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InvoiceTransactionDataImplCopyWithImpl<$Res>
    extends _$InvoiceTransactionDataCopyWithImpl<$Res,
        _$InvoiceTransactionDataImpl>
    implements _$$InvoiceTransactionDataImplCopyWith<$Res> {
  __$$InvoiceTransactionDataImplCopyWithImpl(
      _$InvoiceTransactionDataImpl _value,
      $Res Function(_$InvoiceTransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? version = freezed,
  }) {
    return _then(_$InvoiceTransactionDataImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDetail?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceTransactionDataImpl implements _InvoiceTransactionData {
  const _$InvoiceTransactionDataImpl({this.data, this.version});

  factory _$InvoiceTransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceTransactionDataImplFromJson(json);

  @override
  final TransactionDetail? data;
  @override
  final String? version;

  @override
  String toString() {
    return 'InvoiceTransactionData(data: $data, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceTransactionDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, version);

  /// Create a copy of InvoiceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceTransactionDataImplCopyWith<_$InvoiceTransactionDataImpl>
      get copyWith => __$$InvoiceTransactionDataImplCopyWithImpl<
          _$InvoiceTransactionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceTransactionDataImplToJson(
      this,
    );
  }
}

abstract class _InvoiceTransactionData implements InvoiceTransactionData {
  const factory _InvoiceTransactionData(
      {final TransactionDetail? data,
      final String? version}) = _$InvoiceTransactionDataImpl;

  factory _InvoiceTransactionData.fromJson(Map<String, dynamic> json) =
      _$InvoiceTransactionDataImpl.fromJson;

  @override
  TransactionDetail? get data;
  @override
  String? get version;

  /// Create a copy of InvoiceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceTransactionDataImplCopyWith<_$InvoiceTransactionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
