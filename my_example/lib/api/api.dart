import 'package:my_example/models/word/word.dart';
import 'package:my_example/models/word_book/word_book.dart';
import 'package:my_example/models/plan/plan.dart';
import 'package:my_example/models/member_login_response/member_login_response.dart';
import 'package:my_example/utils/http/http_request.dart';
import 'package:my_example/models/page_data/page_data.dart';

/* 分页查询单词 POST /client/word/pageList*/
Future<PageData<Word>> wordPageListApi({
  int? current,
  int? size,
  String? wordBookKey,
}) async {
  final res = await HttpRequest().post(
    '/client/word/pageList',
    data: {'current': current, 'size': size, 'wordBookKey': wordBookKey},
  );
  return PageData.fromJson(
      res.data, (Object? v) => Word.fromJson(v as Map<String, dynamic>));
}

/* 分页查询单词本 POST /client/word-book/pageList*/
Future<PageData<WordBook>> wordBookPageListApi({
  int? current,
  int? size,
}) async {
  final res = await HttpRequest().post(
    '/client/word-book/pageList',
    data: {'current': current, 'size': size},
  );
  return PageData.fromJson(
      res.data, (Object? v) => WordBook.fromJson(v as Map<String, dynamic>));
}

/* 创建学习集 POST /client/studyset/create*/
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

/* 创建计划 POST /client/plan/create*/
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

/* 用户注册 POST /client/member/register*/
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

/* 用户登录 POST /client/member/login*/
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
