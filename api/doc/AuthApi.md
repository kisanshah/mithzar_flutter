# api.api.AuthApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**refreshToken**](AuthApi.md#refreshtoken) | **POST** /auth/refresh_token | Generate new access token using refresh token
[**sendOtp**](AuthApi.md#sendotp) | **POST** /auth/send_otp | Send Otp
[**verifyOtp**](AuthApi.md#verifyotp) | **POST** /auth/verify_otp | Verify Otp


# **refreshToken**
> Tokens refreshToken(refreshTokenRequest)

Generate new access token using refresh token

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final RefreshTokenRequest refreshTokenRequest = ; // RefreshTokenRequest | Refresh Token

try {
    final response = api.refreshToken(refreshTokenRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenRequest** | [**RefreshTokenRequest**](RefreshTokenRequest.md)| Refresh Token | 

### Return type

[**Tokens**](Tokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendOtp**
> SuccessResponse sendOtp(sendOtpRequest)

Send Otp

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final SendOtpRequest sendOtpRequest = ; // SendOtpRequest | Send otp to user for login/sign up

try {
    final response = api.sendOtp(sendOtpRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->sendOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendOtpRequest** | [**SendOtpRequest**](SendOtpRequest.md)| Send otp to user for login/sign up | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyOtp**
> Tokens verifyOtp(verifyOtpRequest)

Verify Otp

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAuthApi();
final VerifyOtpRequest verifyOtpRequest = ; // VerifyOtpRequest | Verify otp and return tokens

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
 **verifyOtpRequest** | [**VerifyOtpRequest**](VerifyOtpRequest.md)| Verify otp and return tokens | 

### Return type

[**Tokens**](Tokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

