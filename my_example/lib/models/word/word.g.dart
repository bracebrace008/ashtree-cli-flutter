// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordImpl _$$WordImplFromJson(Map<String, dynamic> json) => _$WordImpl(
      id: json['id'] as String?,
      bookKey: json['bookKey'] as String?,
      phone: json['phone'] as String?,
      trans: (json['trans'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      ukphone: json['ukphone'] as String?,
      usphone: json['usphone'] as String?,
      wordHead: json['wordHead'] as String?,
      wordKey: json['wordKey'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$WordImplToJson(_$WordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookKey': instance.bookKey,
      'phone': instance.phone,
      'trans': instance.trans,
      'ukphone': instance.ukphone,
      'usphone': instance.usphone,
      'wordHead': instance.wordHead,
      'wordKey': instance.wordKey,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
