# api.api.VariantApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVariants**](VariantApi.md#getvariants) | **POST** /variants | Get variant list.


# **getVariants**
> ProductVariant getVariants(page, size)

Get variant list.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getVariantApi();
final int page = 56; // int | 
final int size = 56; // int | 

try {
    final response = api.getVariants(page, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VariantApi->getVariants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | 
 **size** | **int**|  | 

### Return type

[**ProductVariant**](ProductVariant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

