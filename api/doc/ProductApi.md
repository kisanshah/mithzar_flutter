# api.api.ProductApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**productsAllGet**](ProductApi.md#productsallget) | **GET** /products/all | Returns a list of products.


# **productsAllGet**
> BuiltList<String> productsAllGet()

Returns a list of products.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getProductApi();

try {
    final response = api.productsAllGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProductApi->productsAllGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BuiltList&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

