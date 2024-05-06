import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
class Plan with _$Plan {
  const factory Plan({
    String? id,
    String? planName,
    String? planDesc,
    List<String>? wordBookKeys,
    int? memberId,
    int? learnNumOfDay,
    String? createdAt,
    String? updatedAt,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
