# api.api.AuthApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**refreshToken**](AuthApi.md#refreshtoken) | **POST** /auth/refreshToken | Generate new access token
[**sendOtp**](AuthApi.md#sendotp) | **POST** /auth/send_otp | Register new user &amp; send otp
[**signIn**](AuthApi.md#signin) | **POST** /auth/signIn | Sign In
[**verifyOtp**](AuthApi.md#verifyotp) | **POST** /auth/verify_otp | Verify OTP


# **refreshToken**
> Tokens refreshToken(tokens)

Generate new access token

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final Tokens tokens = ; // Tokens | User credentials

try {
    final response = api.refreshToken(tokens);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokens** | [**Tokens**](Tokens.md)| User credentials | 

### Return type

[**Tokens**](Tokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendOtp**
> ApiRes sendOtp(user)

Register new user & send otp

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final User user = ; // User | 

try {
    final response = api.sendOtp(user);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->sendOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | 

### Return type

[**ApiRes**](ApiRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signIn**
> Tokens signIn(user)

Sign In

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final User user = ; // User | User credentials

try {
    final response = api.signIn(user);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->signIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| User credentials | 

### Return type

[**Tokens**](Tokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyOtp**
> Tokens verifyOtp(verifyOtpReq)

Verify OTP

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final VerifyOtpReq verifyOtpReq = ; // VerifyOtpReq | 

try {
    final response = api.verifyOtp(verifyOtpReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->verifyOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyOtpReq** | [**VerifyOtpReq**](VerifyOtpReq.md)|  | 

### Return type

[**Tokens**](Tokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

