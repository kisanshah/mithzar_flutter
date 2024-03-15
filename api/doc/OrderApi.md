# api.api.OrderApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkout**](OrderApi.md#checkout) | **GET** /order/checkout | Returns a list of products
[**downloadInvoice**](OrderApi.md#downloadinvoice) | **GET** /order/{id}/invoice | 
[**getOrderById**](OrderApi.md#getorderbyid) | **GET** /order/{id} | 
[**getOrderList**](OrderApi.md#getorderlist) | **GET** /order | Returns a list of orders


# **checkout**
> Checkout checkout()

Returns a list of products

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

[**Checkout**](Checkout.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadInvoice**
> MultipartFile downloadInvoice(id)



### Example
```dart
import 'package:api/api.dart';

final api = Api().getOrderApi();
final num id = 8.14; // num | 

try {
    final response = api.downloadInvoice(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->downloadInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
> Order getOrderById(id)



Get user order by id

### Example
```dart
import 'package:api/api.dart';

final api = Api().getOrderApi();
final num id = 8.14; // num | 

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
 **id** | **num**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderList**
> List<Order> getOrderList(status, page, size)

Returns a list of orders

### Example
```dart
import 'package:api/api.dart';

final api = Api().getOrderApi();
final List<String> status = ; // List<String> | 
final num page = 8.14; // num | 
final num size = 8.14; // num | 

try {
    final response = api.getOrderList(status, page, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->getOrderList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**List&lt;String&gt;**](String.md)|  | 
 **page** | **num**|  | [optional] 
 **size** | **num**|  | [optional] 

### Return type

[**List&lt;Order&gt;**](Order.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

