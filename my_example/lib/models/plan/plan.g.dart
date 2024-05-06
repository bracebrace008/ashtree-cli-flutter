// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      id: json['id'] as String?,
      planName: json['planName'] as String?,
      planDesc: json['planDesc'] as String?,
      wordBookKeys: (json['wordBookKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      memberId: (json['memberId'] as num?)?.toInt(),
      learnNumOfDay: (json['learnNumOfDay'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'planName': instance.planName,
      'planDesc': instance.planDesc,
      'wordBookKeys': instance.wordBookKeys,
      'memberId': instance.memberId,
      'learnNumOfDay': instance.learnNumOfDay,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
