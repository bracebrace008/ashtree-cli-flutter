import 'package:my_example/models/page_data/page_data.dart';
import 'package:my_example/utils/http/http_request.dart';

Future<PageData<Word>> wordPageListApi({
  int? current,
  int? size,
  String? wordBookKey,
}) async {
  return await HttpRequest().post(
    '/client/word/pageList',
    data: {'current': current, 'size': size, 'wordBookKey': wordBookKey},
  );
}

Future<PageData<WordBook>> wordBookPageListApi({
  int? current,
  int? size,
}) async {
  return await HttpRequest().post(
    '/client/word-book/pageList',
    data: {'current': current, 'size': size},
  );
}

Future<String> studysetCreateApi({
  String? title,
  String? subtitle,
}) async {
  return await HttpRequest().post(
    '/client/studyset/create',
    data: {'title': title, 'subtitle': subtitle},
  );
}

Future<Plan> planCreateApi({
  String? planName,
  String? planDesc,
  List<String>? wordBookKeys,
  int? learnNumOfDay,
}) async {
  return await HttpRequest().post(
    '/client/plan/create',
    data: {
      'planName': planName,
      'planDesc': planDesc,
      'wordBookKeys': wordBookKeys,
      'learnNumOfDay': learnNumOfDay
    },
  );
}

Future<String> memberRegisterApi({
  String? nickName,
  String? password,
  String? email,
  String? memberName,
}) async {
  return await HttpRequest().post(
    '/client/member/register',
    data: {
      'nickName': nickName,
      'password': password,
      'email': email,
      'memberName': memberName
    },
  );
}

Future<MemberLoginResponse> memberLoginApi({
  String? memberName,
  String? password,
}) async {
  return await HttpRequest().post(
    '/client/member/login',
    data: {'memberName': memberName, 'password': password},
  );
}
