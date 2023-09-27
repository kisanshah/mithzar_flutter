# flutterClient.api.AuthApi

## Load the API package
```dart
import 'package:flutterClient/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authRefreshTokenPost**](AuthApi.md#authrefreshtokenpost) | **POST** /auth/refreshToken | Generates access token using refresh token
[**authRegisterPost**](AuthApi.md#authregisterpost) | **POST** /auth/register | Register new user
[**authSignInPost**](AuthApi.md#authsigninpost) | **POST** /auth/signIn | Sign In


# **authRefreshTokenPost**
> Tokens authRefreshTokenPost(body)

Generates access token using refresh token

### Example
```dart
import 'package:flutterClient/api.dart';

final api_instance = AuthApi();
final body = Object(); // Object | 

try {
    final result = api_instance.authRefreshTokenPost(body);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authRefreshTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | [optional] 

### Return type

[**Tokens**](Tokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRegisterPost**
> Tokens authRegisterPost(user)

Register new user

### Example
```dart
import 'package:flutterClient/api.dart';

final api_instance = AuthApi();
final user = User(); // User | 

try {
    final result = api_instance.authRegisterPost(user);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | [optional] 

### Return type

[**Tokens**](Tokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSignInPost**
> Tokens authSignInPost(user)

Sign In

### Example
```dart
import 'package:flutterClient/api.dart';

final api_instance = AuthApi();
final user = User(); // User | User credentials

try {
    final result = api_instance.authSignInPost(user);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authSignInPost: $e\n');
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

