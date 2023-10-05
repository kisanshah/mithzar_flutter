// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiRes _$$_ApiResFromJson(Map<String, dynamic> json) => _$_ApiRes(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ApiErrorMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: json['data'],
    );

Map<String, dynamic> _$$_ApiResToJson(_$_ApiRes instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'errors': instance.errors,
      'data': instance.data,
    };
