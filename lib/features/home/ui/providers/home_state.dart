import 'package:api/api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool loading,
    @Default('') String error,
    @Default([]) List<Section> sections,
    @Default([]) List<Product> products,
  }) = _HomeState;
}
