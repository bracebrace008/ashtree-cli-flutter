// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageDataImpl<T> _$$PageDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PageDataImpl<T>(
      records: (json['records'] as List<dynamic>).map(fromJsonT).toList(),
      total: (json['total'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      current: (json['current'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$$PageDataImplToJson<T>(
  _$PageDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'records': instance.records.map(toJsonT).toList(),
      'total': instance.total,
      'size': instance.size,
      'current': instance.current,
      'pages': instance.pages,
    };
