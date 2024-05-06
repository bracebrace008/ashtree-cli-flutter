import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_login_response.freezed.dart';
part 'member_login_response.g.dart';

@freezed
class MemberLoginResponse with _$MemberLoginResponse {
  const factory MemberLoginResponse({
    String? accessToken,
    String? refreshToken,
    String? memberName,
    int? memberId,
  }) = _MemberLoginResponse;

  factory MemberLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$MemberLoginResponseFromJson(json);
}
