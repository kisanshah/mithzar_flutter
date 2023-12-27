# api.api.CartApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addToCart**](CartApi.md#addtocart) | **POST** /cart/add | add product to user&#39;s cart
[**getCartItems**](CartApi.md#getcartitems) | **GET** /cart/list | returns list of cart items
[**removeAllItem**](CartApi.md#removeallitem) | **DELETE** /cart/removeAll | removes the specified cart item
[**removeItem**](CartApi.md#removeitem) | **DELETE** /cart/remove | removes the specified cart item


# **addToCart**
> ApiRes addToCart(addCartReq)

add product to user's cart

### Example
```dart
import 'package:api/api.dart';

final api = Api().getCartApi();
final AddCartReq addCartReq = ; // AddCartReq | 

try {
    final response = api.addToCart(addCartReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->addToCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addCartReq** | [**AddCartReq**](AddCartReq.md)|  | [optional] 

### Return type

[**ApiRes**](ApiRes.md)

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

# **removeAllItem**
> ApiRes removeAllItem(ids)

removes the specified cart item

### Example
```dart
import 'package:api/api.dart';

final api = Api().getCartApi();
final List<int> ids = ; // List<int> | 

try {
    final response = api.removeAllItem(ids);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->removeAllItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**List&lt;int&gt;**](int.md)|  | [optional] 

### Return type

[**ApiRes**](ApiRes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeItem**
> ApiRes removeItem(id)

removes the specified cart item

### Example
```dart
import 'package:api/api.dart';

final api = Api().getCartApi();
final IdReq id = ; // IdReq | 

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
 **id** | [**IdReq**](.md)|  | [optional] 

### Return type

[**ApiRes**](ApiRes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

