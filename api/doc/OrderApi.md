# api.api.OrderApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkout**](OrderApi.md#checkout) | **GET** /order/checkout | Returns a list of products.
[**getOrderList**](OrderApi.md#getorderlist) | **GET** /order/list | Returns a list of orders.


# **checkout**
> CheckoutUrl checkout()

Returns a list of products.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getOrderApi();

try {
    final response = api.checkout();
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->checkout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CheckoutUrl**](CheckoutUrl.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderList**
> List<Order> getOrderList()

Returns a list of orders.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getOrderApi();

try {
    final response = api.getOrderList();
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->getOrderList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Order&gt;**](Order.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

