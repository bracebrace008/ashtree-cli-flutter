import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:my_example/models/translation/translation.dart';

part 'word.freezed.dart';
part 'word.g.dart';

@freezed
class Word with _$Word {
  const factory Word({
    String? id,
    String? bookKey,
    String? phone,
    List<Translation>? trans,
    String? ukphone,
    String? usphone,
    String? wordHead,
    String? wordKey,
    String? createdAt,
    String? updatedAt,
  }) = _Word;

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);
}
