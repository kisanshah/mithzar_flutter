import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_req.freezed.dart';
part 'register_req.g.dart';

@freezed
class RegisterReq with _$RegisterReq {
  factory RegisterReq({
    @Default('') String name,
    @Default('') String email,
    @Default('') String phone,
    @Default('') String password,
  }) = _RegisterReq;

  factory RegisterReq.fromJson(Map<String, dynamic> json) =>
      _$RegisterReqFromJson(json);
}
