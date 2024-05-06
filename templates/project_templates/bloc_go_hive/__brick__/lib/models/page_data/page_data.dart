import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_data.freezed.dart';
part 'page_data.g.dart';

@Freezed(genericArgumentFactories: true)
class PageData<T> with _$PageData<T> {
  const factory PageData({
    required List<T> records,
    required int total,
    required int size,
    required int current,
    required int pages,
  }) = _PageData;

  factory PageData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PageDataFromJson(json, fromJsonT);
}
