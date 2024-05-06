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
      total: json['total'] as int,
      size: json['size'] as int,
      current: json['current'] as int,
      pages: json['pages'] as int,
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
