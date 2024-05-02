// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordBookImpl _$$WordBookImplFromJson(Map<String, dynamic> json) =>
    _$WordBookImpl(
      wordBookId: (json['wordBookId'] as num?)?.toInt(),
      wordBookKey: json['wordBookKey'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      createTime: json['createTime'] as String?,
      wordCount: (json['wordCount'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      tags: json['tags'] as String?,
    );

Map<String, dynamic> _$$WordBookImplToJson(_$WordBookImpl instance) =>
    <String, dynamic>{
      'wordBookId': instance.wordBookId,
      'wordBookKey': instance.wordBookKey,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'createTime': instance.createTime,
      'wordCount': instance.wordCount,
      'size': instance.size,
      'tags': instance.tags,
    };
