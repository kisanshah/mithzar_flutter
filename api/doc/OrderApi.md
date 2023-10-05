# api.api.OrderApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderCheckoutGet**](OrderApi.md#ordercheckoutget) | **GET** /order/checkout | Returns a list of products.
[**orderListGet**](OrderApi.md#orderlistget) | **GET** /order/list | Returns a list of orders.


# **orderCheckoutGet**
> orderCheckoutGet()

Returns a list of products.

### Example
```dart
import 'package:api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = Api().getOrderApi();

try {
    api.orderCheckoutGet();
} catch on DioError (e) {
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

# **orderListGet**
> orderListGet()

Returns a list of orders.

### Example
```dart
import 'package:api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = Api().getOrderApi();

try {
    api.orderListGet();
} catch on DioError (e) {
    print('Exception when calling OrderApi->orderListGet: $e\n');
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

