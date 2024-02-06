//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_cart_req.freezed.dart';
part 'add_cart_req.g.dart';

@freezed
class AddCartReq with _$AddCartReq {
// ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddCartReq({
    int? productId,
  }) = _AddCartReq;

  factory AddCartReq.fromJson(Map<String, Object?> json) =>
      _$AddCartReqFromJson(json);
}
