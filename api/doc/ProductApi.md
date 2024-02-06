# api.api.ProductApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFiltered**](ProductApi.md#getfiltered) | **GET** /product/filtered | Get filtered list.
[**getProductById**](ProductApi.md#getproductbyid) | **GET** /product/{id} | Get product detail.


# **getFiltered**
> List<Product> getFiltered(filter)

Get filtered list.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getProductApi();
final PaginationFilter filter = ; // PaginationFilter | 

try {
    final response = api.getFiltered(filter);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->getFiltered: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**PaginationFilter**](.md)|  | 

### Return type

[**List&lt;Product&gt;**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductById**
> Product getProductById(id)

Get product detail.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getProductApi();
final int id = 56; // int | 

try {
    final response = api.getProductById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->getProductById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Product**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

