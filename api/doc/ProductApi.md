# flutterClient.api.ProductApi

## Load the API package
```dart
import 'package:flutterClient/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**productsAllGet**](ProductApi.md#productsallget) | **GET** /products/all | Returns a list of products.


# **productsAllGet**
> List<String> productsAllGet()

Returns a list of products.

### Example
```dart
import 'package:flutterClient/api.dart';

final api_instance = ProductApi();

try {
    final result = api_instance.productsAllGet();
    print(result);
} catch (e) {
    print('Exception when calling ProductApi->productsAllGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

