# api.api.OrderApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkout**](OrderApi.md#checkout) | **GET** /order/checkout | Returns a list of products.
[**downloadInvoice**](OrderApi.md#downloadinvoice) | **GET** /order/invoice | 
[**getOrderById**](OrderApi.md#getorderbyid) | **GET** /order/{id} | 
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

# **downloadInvoice**
> Uint8List downloadInvoice()



### Example
```dart
import 'package:api/api.dart';

final api = Api().getOrderApi();

try {
    final response = api.downloadInvoice();
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->downloadInvoice: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
> Order getOrderById(id)



### Example
```dart
import 'package:api/api.dart';

final api = Api().getOrderApi();
final String id = id_example; // String | 

try {
    final response = api.getOrderById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->getOrderById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderList**
> List<Order> getOrderList(filter, status)

Returns a list of orders.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getOrderApi();
final PaginationFilter filter = ; // PaginationFilter | 
final List<String> status = ; // List<String> | 

try {
    final response = api.getOrderList(filter, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->getOrderList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**PaginationFilter**](.md)|  | 
 **status** | [**List&lt;String&gt;**](String.md)|  | 

### Return type

[**List&lt;Order&gt;**](Order.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

