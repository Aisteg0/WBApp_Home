# APIAPI

All URIs are relative to *https://cataas.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCats**](APIAPI.md#apicats) | **GET** /api/cats | 
[**apiCount**](APIAPI.md#apicount) | **GET** /api/count | 
[**apiTags**](APIAPI.md#apitags) | **GET** /api/tags | 


# **apiCats**
```swift
    open class func apiCats(limit: Double? = nil, skip: Double? = nil, tags: String? = nil, completion: @escaping (_ data: [CatRandom200Response]?, _ error: Error?) -> Void)
```



Will return all cats

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Double |  (optional) (default to 10)
let skip = 987 // Double |  (optional) (default to 0)
let tags = "tags_example" // String |  (optional)

APIAPI.apiCats(limit: limit, skip: skip, tags: tags) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Double** |  | [optional] [default to 10]
 **skip** | **Double** |  | [optional] [default to 0]
 **tags** | **String** |  | [optional] 

### Return type

[**[CatRandom200Response]**](CatRandom200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCount**
```swift
    open class func apiCount(completion: @escaping (_ data: ApiCount200Response?, _ error: Error?) -> Void)
```



Count how many cat

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


APIAPI.apiCount() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiCount200Response**](ApiCount200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTags**
```swift
    open class func apiTags(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```



Will return all tags

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


APIAPI.apiTags() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

