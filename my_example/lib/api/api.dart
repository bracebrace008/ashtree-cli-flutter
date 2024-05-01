import 'package:my_example/utils/http/http_request.dart';
import 'package:my_example/models/page_data/page_data.dart';

Future<PageData<Word>> wordPageListApi({
  int? current,
  int? size,
  String? wordBookKey,
}) async {
  final res = await HttpRequest().post(
    '/client/word/pageList',
    data: {'current': current, 'size': size, 'wordBookKey': wordBookKey},
  );
  return PageData.fromJson(res.data, (v) => Word.fromJson(v));
}

Future<PageData<WordBook>> wordBookPageListApi({
  int? current,
  int? size,
}) async {
  final res = await HttpRequest().post(
    '/client/word-book/pageList',
    data: {'current': current, 'size': size},
  );
  return PageData.fromJson(res.data, (v) => WordBook.fromJson(v));
}

Future<String> studysetCreateApi({
  String? title,
  String? subtitle,
}) async {
  final res = await HttpRequest().post(
    '/client/studyset/create',
    data: {'title': title, 'subtitle': subtitle},
  );
  return res.data;
}

Future<Plan> planCreateApi({
  String? planName,
  String? planDesc,
  List<String>? wordBookKeys,
  int? learnNumOfDay,
}) async {
  final res = await HttpRequest().post(
    '/client/plan/create',
    data: {
      'planName': planName,
      'planDesc': planDesc,
      'wordBookKeys': wordBookKeys,
      'learnNumOfDay': learnNumOfDay
    },
  );
  return res.data;
}

Future<String> memberRegisterApi({
  String? nickName,
  String? password,
  String? email,
  String? memberName,
}) async {
  final res = await HttpRequest().post(
    '/client/member/register',
    data: {
      'nickName': nickName,
      'password': password,
      'email': email,
      'memberName': memberName
    },
  );
  return res.data;
}

Future<MemberLoginResponse> memberLoginApi({
  String? memberName,
  String? password,
}) async {
  final res = await HttpRequest().post(
    '/client/member/login',
    data: {'memberName': memberName, 'password': password},
  );
  return res.data;
}
