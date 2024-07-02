# api.api.BannerApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActiveBanners**](BannerApi.md#getactivebanners) | **GET** /banner | Get active banners


# **getActiveBanners**
> List<Banner> getActiveBanners()

Get active banners

### Example
```dart
import 'package:api/api.dart';

final api = Api().getBannerApi();

try {
    final response = api.getActiveBanners();
    print(response);
} catch on DioException (e) {
    print('Exception when calling BannerApi->getActiveBanners: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Banner&gt;**](Banner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

