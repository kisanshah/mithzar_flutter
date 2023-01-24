import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../ui/shared/providers/dio_provider.dart';
import '../helper/api_path.dart';
import '../model/register_req.dart';
import '../model/sign_in_req.dart';
import '../model/token_res.dart';

part 'auth.g.dart';

final authSourceProvider = Provider<AuthSource>((ref) {
  return AuthSource(ref.read(dioProvider));
});

@RestApi()
abstract class AuthSource {
  factory AuthSource(Dio dio) => _AuthSource(dio);

  @POST(ApiPath.signIn)
  Future<TokenRes> signIn(@Body() SignInReq req);

  @POST(ApiPath.register)
  Future<TokenRes> register(@Body() RegisterReq req);
}
