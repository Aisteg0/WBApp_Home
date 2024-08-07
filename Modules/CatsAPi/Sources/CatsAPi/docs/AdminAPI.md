# AdminAPI

All URIs are relative to *https://cataas.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminCatsBrowse**](AdminAPI.md#admincatsbrowse) | **GET** /admin/cats | 
[**adminCatsDelete**](AdminAPI.md#admincatsdelete) | **DELETE** /admin/cats/{id} | 
[**adminCatsEdit**](AdminAPI.md#admincatsedit) | **PATCH** /admin/cats/{id} | 
[**adminCatsValidate**](AdminAPI.md#admincatsvalidate) | **PUT** /admin/cats/{id}/validate | 


# **adminCatsBrowse**
```swift
    open class func adminCatsBrowse(limit: Int? = nil, skip: Int? = nil, completion: @escaping (_ data: [AdminCatsBrowse200ResponseInner]?, _ error: Error?) -> Void)
```



Browse cats

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int |  (optional)
let skip = 987 // Int |  (optional)

AdminAPI.adminCatsBrowse(limit: limit, skip: skip) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **skip** | **Int** |  | [optional] 

### Return type

[**[AdminCatsBrowse200ResponseInner]**](AdminCatsBrowse200ResponseInner.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminCatsDelete**
```swift
    open class func adminCatsDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Delete cat

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

AdminAPI.adminCatsDelete(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminCatsEdit**
```swift
    open class func adminCatsEdit(id: String, adminCatsEditRequest: AdminCatsEditRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Activate cat

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let adminCatsEditRequest = admin_cats_edit_request(tags: "tags_example") // AdminCatsEditRequest |  (optional)

AdminAPI.adminCatsEdit(id: id, adminCatsEditRequest: adminCatsEditRequest) { (response, error) in
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
 **id** | **String** |  | 
 **adminCatsEditRequest** | [**AdminCatsEditRequest**](AdminCatsEditRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminCatsValidate**
```swift
    open class func adminCatsValidate(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Activate cat

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

AdminAPI.adminCatsValidate(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

