# api.api.TempApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkoutPaymentResult**](TempApi.md#checkoutpaymentresult) | **POST** /order/payment_result | Returns a list of products.


# **checkoutPaymentResult**
> CheckoutUrl checkoutPaymentResult(body, xRazorpaySignature)

Returns a list of products.

### Example
```dart
import 'package:api/api.dart';

final api = Api().getTempApi();
final Object body = Object; // Object | 
final String xRazorpaySignature = xRazorpaySignature_example; // String | 

try {
    final response = api.checkoutPaymentResult(body, xRazorpaySignature);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TempApi->checkoutPaymentResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 
 **xRazorpaySignature** | **String**|  | [optional] 

### Return type

[**CheckoutUrl**](CheckoutUrl.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

