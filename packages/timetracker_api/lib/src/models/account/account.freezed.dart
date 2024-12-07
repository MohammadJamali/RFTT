// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  List<Invoice>? get invoices => throw _privateConstructorUsedError;
  List<TransactionActor>? get transactionActors =>
      throw _privateConstructorUsedError;
  int? get totalInvoices => throw _privateConstructorUsedError;
  int? get paiedInvoices => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String id,
      String? email,
      String? name,
      String? profilePicture,
      List<Invoice>? invoices,
      List<TransactionActor>? transactionActors,
      int? totalInvoices,
      int? paiedInvoices});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? invoices = freezed,
    Object? transactionActors = freezed,
    Object? totalInvoices = freezed,
    Object? paiedInvoices = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      invoices: freezed == invoices
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<Invoice>?,
      transactionActors: freezed == transactionActors
          ? _value.transactionActors
          : transactionActors // ignore: cast_nullable_to_non_nullable
              as List<TransactionActor>?,
      totalInvoices: freezed == totalInvoices
          ? _value.totalInvoices
          : totalInvoices // ignore: cast_nullable_to_non_nullable
              as int?,
      paiedInvoices: freezed == paiedInvoices
          ? _value.paiedInvoices
          : paiedInvoices // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? email,
      String? name,
      String? profilePicture,
      List<Invoice>? invoices,
      List<TransactionActor>? transactionActors,
      int? totalInvoices,
      int? paiedInvoices});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? invoices = freezed,
    Object? transactionActors = freezed,
    Object? totalInvoices = freezed,
    Object? paiedInvoices = freezed,
  }) {
    return _then(_$AccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      invoices: freezed == invoices
          ? _value._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<Invoice>?,
      transactionActors: freezed == transactionActors
          ? _value._transactionActors
          : transactionActors // ignore: cast_nullable_to_non_nullable
              as List<TransactionActor>?,
      totalInvoices: freezed == totalInvoices
          ? _value.totalInvoices
          : totalInvoices // ignore: cast_nullable_to_non_nullable
              as int?,
      paiedInvoices: freezed == paiedInvoices
          ? _value.paiedInvoices
          : paiedInvoices // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.id,
      this.email,
      this.name,
      this.profilePicture,
      final List<Invoice>? invoices,
      final List<TransactionActor>? transactionActors,
      this.totalInvoices,
      this.paiedInvoices})
      : _invoices = invoices,
        _transactionActors = transactionActors;

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final String id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? profilePicture;
  final List<Invoice>? _invoices;
  @override
  List<Invoice>? get invoices {
    final value = _invoices;
    if (value == null) return null;
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TransactionActor>? _transactionActors;
  @override
  List<TransactionActor>? get transactionActors {
    final value = _transactionActors;
    if (value == null) return null;
    if (_transactionActors is EqualUnmodifiableListView)
      return _transactionActors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalInvoices;
  @override
  final int? paiedInvoices;

  @override
  String toString() {
    return 'Account(id: $id, email: $email, name: $name, profilePicture: $profilePicture, invoices: $invoices, transactionActors: $transactionActors, totalInvoices: $totalInvoices, paiedInvoices: $paiedInvoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            const DeepCollectionEquality().equals(other._invoices, _invoices) &&
            const DeepCollectionEquality()
                .equals(other._transactionActors, _transactionActors) &&
            (identical(other.totalInvoices, totalInvoices) ||
                other.totalInvoices == totalInvoices) &&
            (identical(other.paiedInvoices, paiedInvoices) ||
                other.paiedInvoices == paiedInvoices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      profilePicture,
      const DeepCollectionEquality().hash(_invoices),
      const DeepCollectionEquality().hash(_transactionActors),
      totalInvoices,
      paiedInvoices);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final String id,
      final String? email,
      final String? name,
      final String? profilePicture,
      final List<Invoice>? invoices,
      final List<TransactionActor>? transactionActors,
      final int? totalInvoices,
      final int? paiedInvoices}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  String get id;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get profilePicture;
  @override
  List<Invoice>? get invoices;
  @override
  List<TransactionActor>? get transactionActors;
  @override
  int? get totalInvoices;
  @override
  int? get paiedInvoices;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
