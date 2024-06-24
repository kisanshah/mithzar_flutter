# api.api.AuthApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**refreshToken**](AuthApi.md#refreshtoken) | **POST** /auth/refresh_token | Generate new access token
[**sendOtp**](AuthApi.md#sendotp) | **POST** /auth/send_otp | Send otp to new user
[**signInWithPhone**](AuthApi.md#signinwithphone) | **POST** /auth/sign_in_with_phone | Sign In
[**verifyOtp**](AuthApi.md#verifyotp) | **POST** /auth/verify_otp | Verify OTP


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

# **sendOtp**
> Message sendOtp(user)

Send otp to new user

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

[**Message**](Message.md)

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

# **verifyOtp**
> Token verifyOtp(verifyOtpRequest)

Verify OTP

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final VerifyOtpRequest verifyOtpRequest = ; // VerifyOtpRequest | 

try {
    final response = api.verifyOtp(verifyOtpRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->verifyOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyOtpRequest** | [**VerifyOtpRequest**](VerifyOtpRequest.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

