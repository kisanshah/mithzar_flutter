enum ErrorType {
  parsing,
  network,
  timeout,
  responseError,
  other,
}

class AppError implements Exception {
  AppError({required this.type, required this.message, this.trace});

  final ErrorType type;
  final String message;
  final StackTrace? trace;

  @override
  String toString() {
    return 'AppError (type: $type, message: $message, trace = $trace)'; 
  }
}
