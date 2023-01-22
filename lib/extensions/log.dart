import 'dart:developer';

extension LogExtension on String? {
  void logInfo() {
    log('\x1b[35m$this\x1B[0m');
  }

  void logSuccess() {
    log('\x1B[32m$this\x1B[0m');
  }

  void logError() {
    log('\x1B[31m$this\x1B[0m');
  }

  void logWarning() {
    log('\x1B[33m$this\x1B[0m');
  }
}
