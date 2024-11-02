# api.api.AddressApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](AddressApi.md#delete) | **DELETE** /address | delete user address by id
[**getAddresses**](AddressApi.md#getaddresses) | **GET** /address | Get all user addresses
[**save**](AddressApi.md#save) | **POST** /address | save new address for the user and return new address object
[**setDefaultAddress**](AddressApi.md#setdefaultaddress) | **PATCH** /address | Mark the address as default
[**update**](AddressApi.md#update) | **PUT** /address | update the address with the new address


# **delete**
> SuccessResponse delete(id)

delete user address by id

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();
final int id = 56; // int | Numeric ID of the address to delete

try {
    final response = api.delete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->delete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Numeric ID of the address to delete | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddresses**
> List<Address> getAddresses()

Get all user addresses

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();

try {
    final response = api.getAddresses();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->getAddresses: $e\n');
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

# **save**
> Address save(address)

save new address for the user and return new address object

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();
final Address address = ; // Address | 

try {
    final response = api.save(address);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->save: $e\n');
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
> Address setDefaultAddress(id)

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

[**Address**](Address.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> Address update(address)

update the address with the new address

### Example
```dart
import 'package:api/api.dart';

final api = Api().getAddressApi();
final Address address = ; // Address | 

try {
    final response = api.update(address);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->update: $e\n');
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

