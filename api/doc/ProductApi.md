# api.api.ProductApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProducts**](ProductApi.md#getproducts) | **GET** /products/all | Returns a list of products.


# **getProducts**
> List<Product> getProducts()

Returns a list of products.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getProductApi();

try {
    final response = api.getProducts();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->getProducts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Product&gt;**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

