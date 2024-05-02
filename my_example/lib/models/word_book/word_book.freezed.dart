// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordBook _$WordBookFromJson(Map<String, dynamic> json) {
  return _WordBook.fromJson(json);
}

/// @nodoc
mixin _$WordBook {
  int? get wordBookId => throw _privateConstructorUsedError;
  String? get wordBookKey => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get createTime => throw _privateConstructorUsedError;
  int? get wordCount => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordBookCopyWith<WordBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordBookCopyWith<$Res> {
  factory $WordBookCopyWith(WordBook value, $Res Function(WordBook) then) =
      _$WordBookCopyWithImpl<$Res, WordBook>;
  @useResult
  $Res call(
      {int? wordBookId,
      String? wordBookKey,
      String? title,
      String? subtitle,
      String? createTime,
      int? wordCount,
      int? size,
      String? tags});
}

/// @nodoc
class _$WordBookCopyWithImpl<$Res, $Val extends WordBook>
    implements $WordBookCopyWith<$Res> {
  _$WordBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordBookId = freezed,
    Object? wordBookKey = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? createTime = freezed,
    Object? wordCount = freezed,
    Object? size = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      wordBookId: freezed == wordBookId
          ? _value.wordBookId
          : wordBookId // ignore: cast_nullable_to_non_nullable
              as int?,
      wordBookKey: freezed == wordBookKey
          ? _value.wordBookKey
          : wordBookKey // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String?,
      wordCount: freezed == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordBookImplCopyWith<$Res>
    implements $WordBookCopyWith<$Res> {
  factory _$$WordBookImplCopyWith(
          _$WordBookImpl value, $Res Function(_$WordBookImpl) then) =
      __$$WordBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? wordBookId,
      String? wordBookKey,
      String? title,
      String? subtitle,
      String? createTime,
      int? wordCount,
      int? size,
      String? tags});
}

/// @nodoc
class __$$WordBookImplCopyWithImpl<$Res>
    extends _$WordBookCopyWithImpl<$Res, _$WordBookImpl>
    implements _$$WordBookImplCopyWith<$Res> {
  __$$WordBookImplCopyWithImpl(
      _$WordBookImpl _value, $Res Function(_$WordBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordBookId = freezed,
    Object? wordBookKey = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? createTime = freezed,
    Object? wordCount = freezed,
    Object? size = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$WordBookImpl(
      wordBookId: freezed == wordBookId
          ? _value.wordBookId
          : wordBookId // ignore: cast_nullable_to_non_nullable
              as int?,
      wordBookKey: freezed == wordBookKey
          ? _value.wordBookKey
          : wordBookKey // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String?,
      wordCount: freezed == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordBookImpl implements _WordBook {
  const _$WordBookImpl(
      {this.wordBookId,
      this.wordBookKey,
      this.title,
      this.subtitle,
      this.createTime,
      this.wordCount,
      this.size,
      this.tags});

  factory _$WordBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordBookImplFromJson(json);

  @override
  final int? wordBookId;
  @override
  final String? wordBookKey;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? createTime;
  @override
  final int? wordCount;
  @override
  final int? size;
  @override
  final String? tags;

  @override
  String toString() {
    return 'WordBook(wordBookId: $wordBookId, wordBookKey: $wordBookKey, title: $title, subtitle: $subtitle, createTime: $createTime, wordCount: $wordCount, size: $size, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordBookImpl &&
            (identical(other.wordBookId, wordBookId) ||
                other.wordBookId == wordBookId) &&
            (identical(other.wordBookKey, wordBookKey) ||
                other.wordBookKey == wordBookKey) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.wordCount, wordCount) ||
                other.wordCount == wordCount) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wordBookId, wordBookKey, title,
      subtitle, createTime, wordCount, size, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordBookImplCopyWith<_$WordBookImpl> get copyWith =>
      __$$WordBookImplCopyWithImpl<_$WordBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordBookImplToJson(
      this,
    );
  }
}

abstract class _WordBook implements WordBook {
  const factory _WordBook(
      {final int? wordBookId,
      final String? wordBookKey,
      final String? title,
      final String? subtitle,
      final String? createTime,
      final int? wordCount,
      final int? size,
      final String? tags}) = _$WordBookImpl;

  factory _WordBook.fromJson(Map<String, dynamic> json) =
      _$WordBookImpl.fromJson;

  @override
  int? get wordBookId;
  @override
  String? get wordBookKey;
  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get createTime;
  @override
  int? get wordCount;
  @override
  int? get size;
  @override
  String? get tags;
  @override
  @JsonKey(ignore: true)
  _$$WordBookImplCopyWith<_$WordBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
