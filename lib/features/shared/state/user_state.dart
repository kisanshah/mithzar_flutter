import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState<T> with _$UserState<T> {
  factory UserState({
    @Default(true) bool loading,
    @Default('') String error,
    required T data,
  }) = _UserState;
}
