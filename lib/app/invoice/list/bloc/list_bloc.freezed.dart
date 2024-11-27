// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInvoiceList,
    required TResult Function(String query) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInvoiceList,
    TResult? Function(String query)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInvoiceList,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInvoices value) fetchInvoiceList,
    required TResult Function(_InvoiceSearch value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInvoices value)? fetchInvoiceList,
    TResult? Function(_InvoiceSearch value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInvoices value)? fetchInvoiceList,
    TResult Function(_InvoiceSearch value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceListEventCopyWith<$Res> {
  factory $InvoiceListEventCopyWith(
          InvoiceListEvent value, $Res Function(InvoiceListEvent) then) =
      _$InvoiceListEventCopyWithImpl<$Res, InvoiceListEvent>;
}

/// @nodoc
class _$InvoiceListEventCopyWithImpl<$Res, $Val extends InvoiceListEvent>
    implements $InvoiceListEventCopyWith<$Res> {
  _$InvoiceListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchInvoicesImplCopyWith<$Res> {
  factory _$$FetchInvoicesImplCopyWith(
          _$FetchInvoicesImpl value, $Res Function(_$FetchInvoicesImpl) then) =
      __$$FetchInvoicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchInvoicesImplCopyWithImpl<$Res>
    extends _$InvoiceListEventCopyWithImpl<$Res, _$FetchInvoicesImpl>
    implements _$$FetchInvoicesImplCopyWith<$Res> {
  __$$FetchInvoicesImplCopyWithImpl(
      _$FetchInvoicesImpl _value, $Res Function(_$FetchInvoicesImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchInvoicesImpl implements _FetchInvoices {
  const _$FetchInvoicesImpl();

  @override
  String toString() {
    return 'InvoiceListEvent.fetchInvoiceList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchInvoicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInvoiceList,
    required TResult Function(String query) search,
  }) {
    return fetchInvoiceList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInvoiceList,
    TResult? Function(String query)? search,
  }) {
    return fetchInvoiceList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInvoiceList,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (fetchInvoiceList != null) {
      return fetchInvoiceList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInvoices value) fetchInvoiceList,
    required TResult Function(_InvoiceSearch value) search,
  }) {
    return fetchInvoiceList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInvoices value)? fetchInvoiceList,
    TResult? Function(_InvoiceSearch value)? search,
  }) {
    return fetchInvoiceList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInvoices value)? fetchInvoiceList,
    TResult Function(_InvoiceSearch value)? search,
    required TResult orElse(),
  }) {
    if (fetchInvoiceList != null) {
      return fetchInvoiceList(this);
    }
    return orElse();
  }
}

abstract class _FetchInvoices implements InvoiceListEvent {
  const factory _FetchInvoices() = _$FetchInvoicesImpl;
}

/// @nodoc
abstract class _$$InvoiceSearchImplCopyWith<$Res> {
  factory _$$InvoiceSearchImplCopyWith(
          _$InvoiceSearchImpl value, $Res Function(_$InvoiceSearchImpl) then) =
      __$$InvoiceSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$InvoiceSearchImplCopyWithImpl<$Res>
    extends _$InvoiceListEventCopyWithImpl<$Res, _$InvoiceSearchImpl>
    implements _$$InvoiceSearchImplCopyWith<$Res> {
  __$$InvoiceSearchImplCopyWithImpl(
      _$InvoiceSearchImpl _value, $Res Function(_$InvoiceSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$InvoiceSearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceSearchImpl implements _InvoiceSearch {
  const _$InvoiceSearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'InvoiceListEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of InvoiceListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceSearchImplCopyWith<_$InvoiceSearchImpl> get copyWith =>
      __$$InvoiceSearchImplCopyWithImpl<_$InvoiceSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInvoiceList,
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInvoiceList,
    TResult? Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInvoiceList,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInvoices value) fetchInvoiceList,
    required TResult Function(_InvoiceSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInvoices value)? fetchInvoiceList,
    TResult? Function(_InvoiceSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInvoices value)? fetchInvoiceList,
    TResult Function(_InvoiceSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _InvoiceSearch implements InvoiceListEvent {
  const factory _InvoiceSearch(final String query) = _$InvoiceSearchImpl;

  String get query;

  /// Create a copy of InvoiceListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceSearchImplCopyWith<_$InvoiceSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvoiceListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Invoice> invoices) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Invoice> invoices)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Invoice> invoices)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvoiceListInitial value) initial,
    required TResult Function(_InvoiceListLoaded value) loaded,
    required TResult Function(_InvoiceListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvoiceListInitial value)? initial,
    TResult? Function(_InvoiceListLoaded value)? loaded,
    TResult? Function(_InvoiceListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvoiceListInitial value)? initial,
    TResult Function(_InvoiceListLoaded value)? loaded,
    TResult Function(_InvoiceListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceListStateCopyWith<$Res> {
  factory $InvoiceListStateCopyWith(
          InvoiceListState value, $Res Function(InvoiceListState) then) =
      _$InvoiceListStateCopyWithImpl<$Res, InvoiceListState>;
}

/// @nodoc
class _$InvoiceListStateCopyWithImpl<$Res, $Val extends InvoiceListState>
    implements $InvoiceListStateCopyWith<$Res> {
  _$InvoiceListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InvoiceListInitialImplCopyWith<$Res> {
  factory _$$InvoiceListInitialImplCopyWith(_$InvoiceListInitialImpl value,
          $Res Function(_$InvoiceListInitialImpl) then) =
      __$$InvoiceListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoiceListInitialImplCopyWithImpl<$Res>
    extends _$InvoiceListStateCopyWithImpl<$Res, _$InvoiceListInitialImpl>
    implements _$$InvoiceListInitialImplCopyWith<$Res> {
  __$$InvoiceListInitialImplCopyWithImpl(_$InvoiceListInitialImpl _value,
      $Res Function(_$InvoiceListInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvoiceListInitialImpl implements _InvoiceListInitial {
  const _$InvoiceListInitialImpl();

  @override
  String toString() {
    return 'InvoiceListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvoiceListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Invoice> invoices) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Invoice> invoices)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Invoice> invoices)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvoiceListInitial value) initial,
    required TResult Function(_InvoiceListLoaded value) loaded,
    required TResult Function(_InvoiceListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvoiceListInitial value)? initial,
    TResult? Function(_InvoiceListLoaded value)? loaded,
    TResult? Function(_InvoiceListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvoiceListInitial value)? initial,
    TResult Function(_InvoiceListLoaded value)? loaded,
    TResult Function(_InvoiceListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InvoiceListInitial implements InvoiceListState {
  const factory _InvoiceListInitial() = _$InvoiceListInitialImpl;
}

/// @nodoc
abstract class _$$InvoiceListLoadedImplCopyWith<$Res> {
  factory _$$InvoiceListLoadedImplCopyWith(_$InvoiceListLoadedImpl value,
          $Res Function(_$InvoiceListLoadedImpl) then) =
      __$$InvoiceListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Invoice> invoices});
}

/// @nodoc
class __$$InvoiceListLoadedImplCopyWithImpl<$Res>
    extends _$InvoiceListStateCopyWithImpl<$Res, _$InvoiceListLoadedImpl>
    implements _$$InvoiceListLoadedImplCopyWith<$Res> {
  __$$InvoiceListLoadedImplCopyWithImpl(_$InvoiceListLoadedImpl _value,
      $Res Function(_$InvoiceListLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
  }) {
    return _then(_$InvoiceListLoadedImpl(
      null == invoices
          ? _value._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<Invoice>,
    ));
  }
}

/// @nodoc

class _$InvoiceListLoadedImpl implements _InvoiceListLoaded {
  const _$InvoiceListLoadedImpl(final List<Invoice> invoices)
      : _invoices = invoices;

  final List<Invoice> _invoices;
  @override
  List<Invoice> get invoices {
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoices);
  }

  @override
  String toString() {
    return 'InvoiceListState.loaded(invoices: $invoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceListLoadedImpl &&
            const DeepCollectionEquality().equals(other._invoices, _invoices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_invoices));

  /// Create a copy of InvoiceListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceListLoadedImplCopyWith<_$InvoiceListLoadedImpl> get copyWith =>
      __$$InvoiceListLoadedImplCopyWithImpl<_$InvoiceListLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Invoice> invoices) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(invoices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Invoice> invoices)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(invoices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Invoice> invoices)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(invoices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvoiceListInitial value) initial,
    required TResult Function(_InvoiceListLoaded value) loaded,
    required TResult Function(_InvoiceListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvoiceListInitial value)? initial,
    TResult? Function(_InvoiceListLoaded value)? loaded,
    TResult? Function(_InvoiceListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvoiceListInitial value)? initial,
    TResult Function(_InvoiceListLoaded value)? loaded,
    TResult Function(_InvoiceListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _InvoiceListLoaded implements InvoiceListState {
  const factory _InvoiceListLoaded(final List<Invoice> invoices) =
      _$InvoiceListLoadedImpl;

  List<Invoice> get invoices;

  /// Create a copy of InvoiceListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceListLoadedImplCopyWith<_$InvoiceListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceListErrorImplCopyWith<$Res> {
  factory _$$InvoiceListErrorImplCopyWith(_$InvoiceListErrorImpl value,
          $Res Function(_$InvoiceListErrorImpl) then) =
      __$$InvoiceListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvoiceListErrorImplCopyWithImpl<$Res>
    extends _$InvoiceListStateCopyWithImpl<$Res, _$InvoiceListErrorImpl>
    implements _$$InvoiceListErrorImplCopyWith<$Res> {
  __$$InvoiceListErrorImplCopyWithImpl(_$InvoiceListErrorImpl _value,
      $Res Function(_$InvoiceListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvoiceListErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceListErrorImpl implements _InvoiceListError {
  const _$InvoiceListErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InvoiceListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of InvoiceListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceListErrorImplCopyWith<_$InvoiceListErrorImpl> get copyWith =>
      __$$InvoiceListErrorImplCopyWithImpl<_$InvoiceListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Invoice> invoices) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Invoice> invoices)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Invoice> invoices)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvoiceListInitial value) initial,
    required TResult Function(_InvoiceListLoaded value) loaded,
    required TResult Function(_InvoiceListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvoiceListInitial value)? initial,
    TResult? Function(_InvoiceListLoaded value)? loaded,
    TResult? Function(_InvoiceListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvoiceListInitial value)? initial,
    TResult Function(_InvoiceListLoaded value)? loaded,
    TResult Function(_InvoiceListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _InvoiceListError implements InvoiceListState {
  const factory _InvoiceListError(final String message) =
      _$InvoiceListErrorImpl;

  String get message;

  /// Create a copy of InvoiceListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceListErrorImplCopyWith<_$InvoiceListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
