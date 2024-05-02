// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberLoginResponse _$MemberLoginResponseFromJson(Map<String, dynamic> json) {
  return _MemberLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$MemberLoginResponse {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get memberName => throw _privateConstructorUsedError;
  int? get memberId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberLoginResponseCopyWith<MemberLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberLoginResponseCopyWith<$Res> {
  factory $MemberLoginResponseCopyWith(
          MemberLoginResponse value, $Res Function(MemberLoginResponse) then) =
      _$MemberLoginResponseCopyWithImpl<$Res, MemberLoginResponse>;
  @useResult
  $Res call(
      {String? accessToken,
      String? refreshToken,
      String? memberName,
      int? memberId});
}

/// @nodoc
class _$MemberLoginResponseCopyWithImpl<$Res, $Val extends MemberLoginResponse>
    implements $MemberLoginResponseCopyWith<$Res> {
  _$MemberLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? memberName = freezed,
    Object? memberId = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      memberName: freezed == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberLoginResponseImplCopyWith<$Res>
    implements $MemberLoginResponseCopyWith<$Res> {
  factory _$$MemberLoginResponseImplCopyWith(_$MemberLoginResponseImpl value,
          $Res Function(_$MemberLoginResponseImpl) then) =
      __$$MemberLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accessToken,
      String? refreshToken,
      String? memberName,
      int? memberId});
}

/// @nodoc
class __$$MemberLoginResponseImplCopyWithImpl<$Res>
    extends _$MemberLoginResponseCopyWithImpl<$Res, _$MemberLoginResponseImpl>
    implements _$$MemberLoginResponseImplCopyWith<$Res> {
  __$$MemberLoginResponseImplCopyWithImpl(_$MemberLoginResponseImpl _value,
      $Res Function(_$MemberLoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? memberName = freezed,
    Object? memberId = freezed,
  }) {
    return _then(_$MemberLoginResponseImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      memberName: freezed == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberLoginResponseImpl implements _MemberLoginResponse {
  const _$MemberLoginResponseImpl(
      {this.accessToken, this.refreshToken, this.memberName, this.memberId});

  factory _$MemberLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberLoginResponseImplFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? memberName;
  @override
  final int? memberId;

  @override
  String toString() {
    return 'MemberLoginResponse(accessToken: $accessToken, refreshToken: $refreshToken, memberName: $memberName, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberLoginResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.memberName, memberName) ||
                other.memberName == memberName) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, memberName, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberLoginResponseImplCopyWith<_$MemberLoginResponseImpl> get copyWith =>
      __$$MemberLoginResponseImplCopyWithImpl<_$MemberLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _MemberLoginResponse implements MemberLoginResponse {
  const factory _MemberLoginResponse(
      {final String? accessToken,
      final String? refreshToken,
      final String? memberName,
      final int? memberId}) = _$MemberLoginResponseImpl;

  factory _MemberLoginResponse.fromJson(Map<String, dynamic> json) =
      _$MemberLoginResponseImpl.fromJson;

  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  String? get memberName;
  @override
  int? get memberId;
  @override
  @JsonKey(ignore: true)
  _$$MemberLoginResponseImplCopyWith<_$MemberLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
