import 'package:flutterClient/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokenProvider = StateProvider<Tokens>((ref) {
  return Tokens(refreshToken: '', accessToken: '');
});
