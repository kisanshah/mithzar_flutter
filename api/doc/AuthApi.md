# api.api.AuthApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**refreshToken**](AuthApi.md#refreshtoken) | **POST** /auth/refresh_token | Generate new access token
[**signInWithPhone**](AuthApi.md#signinwithphone) | **POST** /auth/sign_in_with_phone | Sign In


# **refreshToken**
> Token refreshToken(token)

Generate new access token

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final Token token = ; // Token | User credentials

try {
    final response = api.refreshToken(token);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | [**Token**](Token.md)| User credentials | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signInWithPhone**
> Token signInWithPhone(signInWithPhoneRequest)

Sign In

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final SignInWithPhoneRequest signInWithPhoneRequest = ; // SignInWithPhoneRequest | User credentials

try {
    final response = api.signInWithPhone(signInWithPhoneRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->signInWithPhone: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signInWithPhoneRequest** | [**SignInWithPhoneRequest**](SignInWithPhoneRequest.md)| User credentials | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

