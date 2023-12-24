//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    num? id,

    ///  this.id,
    String? name,

    ///  this.name,
    String? phone,

    ///  this.phone,
    String? email,

    ///  this.email,
    String? password,

    ///  this.password,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
