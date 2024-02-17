# api.api.ProductApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProductById**](ProductApi.md#getproductbyid) | **GET** /product/{id} | Get product detail
[**getVariantById**](ProductApi.md#getvariantbyid) | **GET** /product/variant/{id} | Get variant detail


# **getProductById**
> Product getProductById(id)

Get product detail

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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariantById**
> ProductVariant getVariantById(id)

Get variant detail

### Example
```dart
import 'package:api/api.dart';

final api = Api().getProductApi();
final int id = 56; // int | 

try {
    final response = api.getVariantById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->getVariantById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**ProductVariant**](ProductVariant.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

