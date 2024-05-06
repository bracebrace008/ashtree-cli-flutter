import 'package:freezed_annotation/freezed_annotation.dart';



part 'word_book.freezed.dart';
part 'word_book.g.dart';

@freezed
class WordBook with _$WordBook {
  const factory WordBook({
    int? wordBookId,
String? wordBookKey,
String? title,
String? subtitle,
String? createTime,
int? wordCount,
int? size,
String? tags
  }) = _WordBook;

  factory WordBook.fromJson(Map<String, dynamic> json) =>
      _$WordBookFromJson(json);
}
