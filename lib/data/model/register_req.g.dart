// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterReq _$$_RegisterReqFromJson(Map<String, dynamic> json) =>
    _$_RegisterReq(
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_RegisterReqToJson(_$_RegisterReq instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
    };
