// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberLoginResponseImpl _$$MemberLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberLoginResponseImpl(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      memberName: json['memberName'] as String?,
      memberId: (json['memberId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MemberLoginResponseImplToJson(
        _$MemberLoginResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'memberName': instance.memberName,
      'memberId': instance.memberId,
    };
