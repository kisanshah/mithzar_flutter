import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/model/token_res.dart';

final tokenProvider = StateProvider<TokenRes>((ref) {
  return TokenRes(refreshToken: '', accessToken: '');
});
