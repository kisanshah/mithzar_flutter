# api.api.SectionApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSections**](SectionApi.md#getsections) | **GET** /section | Get section based on the device


# **getSections**
> List<Section> getSections()

Get section based on the device

### Example
```dart
import 'package:api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = Api().getSectionApi();

try {
    final response = api.getSections();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SectionApi->getSections: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Section&gt;**](Section.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

