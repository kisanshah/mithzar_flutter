# api.api.CartApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addToCart**](CartApi.md#addtocart) | **POST** /cart | add product to user cart
[**getCartItems**](CartApi.md#getcartitems) | **GET** /cart | returns list of cart items
[**removeItem**](CartApi.md#removeitem) | **DELETE** /cart | removes the specified cart item


# **addToCart**
> Cart addToCart(addToCartRequest)

add product to user cart

### Example
```dart
import 'package:api/api.dart';

final api = Api().getCartApi();
final AddToCartRequest addToCartRequest = ; // AddToCartRequest | 

try {
    final response = api.addToCart(addToCartRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->addToCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addToCartRequest** | [**AddToCartRequest**](AddToCartRequest.md)|  | [optional] 

### Return type

[**Cart**](Cart.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCartItems**
> List<Cart> getCartItems()

returns list of cart items

### Example
```dart
import 'package:api/api.dart';

final api = Api().getCartApi();

try {
    final response = api.getCartItems();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->getCartItems: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Cart&gt;**](Cart.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeItem**
> Cart removeItem(id)

removes the specified cart item

### Example
```dart
import 'package:api/api.dart';

final api = Api().getCartApi();
final num id = 8.14; // num | 

try {
    final response = api.removeItem(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->removeItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**|  | 

### Return type

[**Cart**](Cart.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

