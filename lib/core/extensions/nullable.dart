extension NullableExtension<T> on Iterable<T>? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}
