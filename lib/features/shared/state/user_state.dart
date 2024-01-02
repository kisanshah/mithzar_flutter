import 'package:e_commerce_front_end/features/components/app_loader.dart';
import 'package:flutter/widgets.dart';

sealed class State<T> {}

class ErrorState<T> extends State<T> {
  ErrorState({required this.message, required this.trace});
  final String message;
  final StackTrace trace;
}

class LoadingState<T> extends State<T> {}

class ResultState<T> extends State<T> {
  ResultState({required this.data});
  final T data;
}

extension StateExtension<T> on State<T> {
  Widget unfold(Widget Function(T data) child) {
    return switch (this) {
      LoadingState() => const AppLoader(),
      ErrorState(message: final message) => Text(message),
      ResultState<T>(data: final data) => child(data)
    };
  }

  Widget unfoldSliver(Widget Function(T data) child) {
    return switch (this) {
      LoadingState() => const SliverToBoxAdapter(child: AppLoader()),
      ErrorState(message: final message) =>
        SliverToBoxAdapter(child: Text(message)),
      ResultState<T>(data: final data) => child(data)
    };
  }
}
