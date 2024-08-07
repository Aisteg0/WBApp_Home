# SecurityAPI

All URIs are relative to *https://cataas.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiSecuritySignIn**](SecurityAPI.md#apisecuritysignin) | **POST** /security/sign-in | 
[**apiSecuritySignUp**](SecurityAPI.md#apisecuritysignup) | **POST** /security/sign-up | 


# **apiSecuritySignIn**
```swift
    open class func apiSecuritySignIn(apiSecuritySignInRequest: ApiSecuritySignInRequest? = nil, completion: @escaping (_ data: ApiSecuritySignIn200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let apiSecuritySignInRequest = api_security_sign_in_request(username: "username_example", password: "password_example") // ApiSecuritySignInRequest |  (optional)

SecurityAPI.apiSecuritySignIn(apiSecuritySignInRequest: apiSecuritySignInRequest) { (response, error) in
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
 **apiSecuritySignInRequest** | [**ApiSecuritySignInRequest**](ApiSecuritySignInRequest.md) |  | [optional] 

### Return type

[**ApiSecuritySignIn200Response**](ApiSecuritySignIn200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSecuritySignUp**
```swift
    open class func apiSecuritySignUp(apiSecuritySignUpRequest: ApiSecuritySignUpRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let apiSecuritySignUpRequest = api_security_sign_up_request(username: "username_example", password: "password_example", email: "email_example", secret: "secret_example") // ApiSecuritySignUpRequest |  (optional)

SecurityAPI.apiSecuritySignUp(apiSecuritySignUpRequest: apiSecuritySignUpRequest) { (response, error) in
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
 **apiSecuritySignUpRequest** | [**ApiSecuritySignUpRequest**](ApiSecuritySignUpRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

