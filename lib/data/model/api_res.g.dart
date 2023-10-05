// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResImpl _$$ApiResImplFromJson(Map<String, dynamic> json) => _$ApiResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ApiErrorMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: json['data'],
    );

Map<String, dynamic> _$$ApiResImplToJson(_$ApiResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'errors': instance.errors,
      'data': instance.data,
    };
