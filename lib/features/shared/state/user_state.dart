import 'package:flutter/widgets.dart';
import 'package:mithzar/features/components/app_loader.dart';

sealed class State<T> {
  State({this.data});

  final T? data;
}

class ErrorState<T> extends State<T> {
  ErrorState({required this.message, required this.trace});
  final String message;
  final StackTrace trace;
}

class LoadingState<T> extends State<T> {}

class ResultState<T> extends State<T> {
  ResultState({super.data});
}

extension StateExtension<T> on State<T> {
  Widget unfold(Widget Function(T data) child) {
    return switch (this) {
      LoadingState() => const AppLoader(),
      ErrorState(message: final message) => Text(message),
      ResultState<T>(data: final data) => child(data as T)
    };
  }

  Widget unfoldSliver(Widget Function(T data) child) {
    return switch (this) {
      LoadingState() => const SliverToBoxAdapter(child: AppLoader()),
      ErrorState(message: final message) =>
        SliverToBoxAdapter(child: Text(message)),
      ResultState<T>(data: final data) => child(data as T)
    };
  }
}
