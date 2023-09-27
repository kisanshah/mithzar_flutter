# flutterClient.api.OrderApi

## Load the API package
```dart
import 'package:flutterClient/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderCheckoutGet**](OrderApi.md#ordercheckoutget) | **GET** /order/checkout | Returns a list of products.


# **orderCheckoutGet**
> orderCheckoutGet()

Returns a list of products.

### Example
```dart
import 'package:flutterClient/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrderApi();

try {
    api_instance.orderCheckoutGet();
} catch (e) {
    print('Exception when calling OrderApi->orderCheckoutGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

