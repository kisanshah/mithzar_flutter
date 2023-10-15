//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:api/src/serializers.dart';
import 'package:api/src/auth/api_key_auth.dart';
import 'package:api/src/auth/basic_auth.dart';
import 'package:api/src/auth/bearer_auth.dart';
import 'package:api/src/auth/oauth.dart';
import 'package:api/src/api/address_api.dart';
import 'package:api/src/api/auth_api.dart';
import 'package:api/src/api/cart_api.dart';
import 'package:api/src/api/order_api.dart';
import 'package:api/src/api/product_api.dart';
import 'package:api/src/api/profile_api.dart';
import 'package:api/src/api/temp_api.dart';

class Api {
  static const String basePath = r'http://localhost:3000/v1';

  final Dio dio;
  final Serializers serializers;

  Api({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AddressApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AddressApi getAddressApi() {
    return AddressApi(dio, serializers);
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get CartApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CartApi getCartApi() {
    return CartApi(dio, serializers);
  }

  /// Get OrderApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrderApi getOrderApi() {
    return OrderApi(dio, serializers);
  }

  /// Get ProductApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProductApi getProductApi() {
    return ProductApi(dio, serializers);
  }

  /// Get ProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProfileApi getProfileApi() {
    return ProfileApi(dio, serializers);
  }

  /// Get TempApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TempApi getTempApi() {
    return TempApi(dio, serializers);
  }
}
