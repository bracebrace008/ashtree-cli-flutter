// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
  String? get id => throw _privateConstructorUsedError;
  String? get planName => throw _privateConstructorUsedError;
  String? get planDesc => throw _privateConstructorUsedError;
  List<String>? get wordBookKeys => throw _privateConstructorUsedError;
  int? get memberId => throw _privateConstructorUsedError;
  int? get learnNumOfDay => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call(
      {String? id,
      String? planName,
      String? planDesc,
      List<String>? wordBookKeys,
      int? memberId,
      int? learnNumOfDay,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planName = freezed,
    Object? planDesc = freezed,
    Object? wordBookKeys = freezed,
    Object? memberId = freezed,
    Object? learnNumOfDay = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: freezed == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String?,
      planDesc: freezed == planDesc
          ? _value.planDesc
          : planDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      wordBookKeys: freezed == wordBookKeys
          ? _value.wordBookKeys
          : wordBookKeys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      learnNumOfDay: freezed == learnNumOfDay
          ? _value.learnNumOfDay
          : learnNumOfDay // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? planName,
      String? planDesc,
      List<String>? wordBookKeys,
      int? memberId,
      int? learnNumOfDay,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planName = freezed,
    Object? planDesc = freezed,
    Object? wordBookKeys = freezed,
    Object? memberId = freezed,
    Object? learnNumOfDay = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PlanImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: freezed == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String?,
      planDesc: freezed == planDesc
          ? _value.planDesc
          : planDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      wordBookKeys: freezed == wordBookKeys
          ? _value._wordBookKeys
          : wordBookKeys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      learnNumOfDay: freezed == learnNumOfDay
          ? _value.learnNumOfDay
          : learnNumOfDay // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanImpl implements _Plan {
  const _$PlanImpl(
      {this.id,
      this.planName,
      this.planDesc,
      final List<String>? wordBookKeys,
      this.memberId,
      this.learnNumOfDay,
      this.createdAt,
      this.updatedAt})
      : _wordBookKeys = wordBookKeys;

  factory _$PlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanImplFromJson(json);

  @override
  final String? id;
  @override
  final String? planName;
  @override
  final String? planDesc;
  final List<String>? _wordBookKeys;
  @override
  List<String>? get wordBookKeys {
    final value = _wordBookKeys;
    if (value == null) return null;
    if (_wordBookKeys is EqualUnmodifiableListView) return _wordBookKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? memberId;
  @override
  final int? learnNumOfDay;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Plan(id: $id, planName: $planName, planDesc: $planDesc, wordBookKeys: $wordBookKeys, memberId: $memberId, learnNumOfDay: $learnNumOfDay, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.planDesc, planDesc) ||
                other.planDesc == planDesc) &&
            const DeepCollectionEquality()
                .equals(other._wordBookKeys, _wordBookKeys) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.learnNumOfDay, learnNumOfDay) ||
                other.learnNumOfDay == learnNumOfDay) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      planName,
      planDesc,
      const DeepCollectionEquality().hash(_wordBookKeys),
      memberId,
      learnNumOfDay,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanImplToJson(
      this,
    );
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
      {final String? id,
      final String? planName,
      final String? planDesc,
      final List<String>? wordBookKeys,
      final int? memberId,
      final int? learnNumOfDay,
      final String? createdAt,
      final String? updatedAt}) = _$PlanImpl;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$PlanImpl.fromJson;

  @override
  String? get id;
  @override
  String? get planName;
  @override
  String? get planDesc;
  @override
  List<String>? get wordBookKeys;
  @override
  int? get memberId;
  @override
  int? get learnNumOfDay;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
