//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_req.freezed.dart';
part 'id_req.g.dart';

@freezed
class IdReq with _$IdReq {
// ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory IdReq({
    int? id,
  }) = _IdReq;

  factory IdReq.fromJson(Map<String, Object?> json) => _$IdReqFromJson(json);
}
