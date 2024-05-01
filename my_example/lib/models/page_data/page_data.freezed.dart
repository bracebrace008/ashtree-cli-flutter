// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageData<T> _$PageDataFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PageData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PageData<T> {
  List<T> get records => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get current => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageDataCopyWith<T, PageData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageDataCopyWith<T, $Res> {
  factory $PageDataCopyWith(
          PageData<T> value, $Res Function(PageData<T>) then) =
      _$PageDataCopyWithImpl<T, $Res, PageData<T>>;
  @useResult
  $Res call({List<T> records, int total, int size, int current, int pages});
}

/// @nodoc
class _$PageDataCopyWithImpl<T, $Res, $Val extends PageData<T>>
    implements $PageDataCopyWith<T, $Res> {
  _$PageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? total = null,
    Object? size = null,
    Object? current = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<T>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageDataImplCopyWith<T, $Res>
    implements $PageDataCopyWith<T, $Res> {
  factory _$$PageDataImplCopyWith(
          _$PageDataImpl<T> value, $Res Function(_$PageDataImpl<T>) then) =
      __$$PageDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> records, int total, int size, int current, int pages});
}

/// @nodoc
class __$$PageDataImplCopyWithImpl<T, $Res>
    extends _$PageDataCopyWithImpl<T, $Res, _$PageDataImpl<T>>
    implements _$$PageDataImplCopyWith<T, $Res> {
  __$$PageDataImplCopyWithImpl(
      _$PageDataImpl<T> _value, $Res Function(_$PageDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? total = null,
    Object? size = null,
    Object? current = null,
    Object? pages = null,
  }) {
    return _then(_$PageDataImpl<T>(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<T>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PageDataImpl<T> implements _PageData<T> {
  const _$PageDataImpl(
      {required final List<T> records,
      required this.total,
      required this.size,
      required this.current,
      required this.pages})
      : _records = records;

  factory _$PageDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PageDataImplFromJson(json, fromJsonT);

  final List<T> _records;
  @override
  List<T> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final int total;
  @override
  final int size;
  @override
  final int current;
  @override
  final int pages;

  @override
  String toString() {
    return 'PageData<$T>(records: $records, total: $total, size: $size, current: $current, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageDataImpl<T> &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      total,
      size,
      current,
      pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageDataImplCopyWith<T, _$PageDataImpl<T>> get copyWith =>
      __$$PageDataImplCopyWithImpl<T, _$PageDataImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PageDataImplToJson<T>(this, toJsonT);
  }
}

abstract class _PageData<T> implements PageData<T> {
  const factory _PageData(
      {required final List<T> records,
      required final int total,
      required final int size,
      required final int current,
      required final int pages}) = _$PageDataImpl<T>;

  factory _PageData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PageDataImpl<T>.fromJson;

  @override
  List<T> get records;
  @override
  int get total;
  @override
  int get size;
  @override
  int get current;
  @override
  int get pages;
  @override
  @JsonKey(ignore: true)
  _$$PageDataImplCopyWith<T, _$PageDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
