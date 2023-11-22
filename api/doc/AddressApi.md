# api.api.AddressApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addressIdDelete**](AddressApi.md#addressiddelete) | **DELETE** /address/{id} | Get all user addresses
[**getAddressList**](AddressApi.md#getaddresslist) | **GET** /address/all | Get all user addresses
[**saveAddress**](AddressApi.md#saveaddress) | **POST** /address/save | save new address for the user and return new address object
[**setDefaultAddress**](AddressApi.md#setdefaultaddress) | **PATCH** /address/default/{id} | Mark the address as default
[**updateAddress**](AddressApi.md#updateaddress) | **PUT** /address/update | update the address with the new address


# **addressIdDelete**
> Success addressIdDelete(id)

Get all user addresses

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();
final int id = 56; // int | Numeric ID of the address to delete

try {
    final response = api.addressIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->addressIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Numeric ID of the address to delete | 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressList**
> List<Address> getAddressList()

Get all user addresses

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();

try {
    final response = api.getAddressList();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->getAddressList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Address&gt;**](Address.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAddress**
> Address saveAddress(address)

save new address for the user and return new address object

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();
final Address address = ; // Address | 

try {
    final response = api.saveAddress(address);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->saveAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | [**Address**](Address.md)|  | [optional] 

### Return type

[**Address**](Address.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDefaultAddress**
> Success setDefaultAddress(id)

Mark the address as default

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();
final int id = 56; // int | Numeric ID of the address to set default

try {
    final response = api.setDefaultAddress(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->setDefaultAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Numeric ID of the address to set default | 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAddress**
> Address updateAddress(address)

update the address with the new address

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();
final Address address = ; // Address | 

try {
    final response = api.updateAddress(address);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->updateAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | [**Address**](Address.md)|  | [optional] 

### Return type

[**Address**](Address.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

