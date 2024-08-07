# CatsAPI

All URIs are relative to *https://cataas.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**catGet**](CatsAPI.md#catget) | **GET** /cat/{id} | 
[**catGetText**](CatsAPI.md#catgettext) | **GET** /cat/{id}/says/{text} | 
[**catRandom**](CatsAPI.md#catrandom) | **GET** /cat | 
[**catRandomTag**](CatsAPI.md#catrandomtag) | **GET** /cat/{tag} | 
[**catRandomTagText**](CatsAPI.md#catrandomtagtext) | **GET** /cat/{tag}/says/{text} | 
[**catRandomText**](CatsAPI.md#catrandomtext) | **GET** /cat/says/{text} | 


# **catGet**
```swift
    open class func catGet(id: String, type: ModelType_catGet? = nil, filter: Filter_catGet? = nil, fit: Fit_catGet? = nil, position: Position_catGet? = nil, width: Int? = nil, height: Int? = nil, blur: Int? = nil, r: Int? = nil, g: Int? = nil, b: Int? = nil, brightness: Float? = nil, saturation: Float? = nil, hue: Int? = nil, lightness: Int? = nil, html: Bool? = nil, json: Bool? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Get cat by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let type = "type_example" // String |  (optional)
let filter = "filter_example" // String |  (optional)
let fit = "fit_example" // String |  (optional)
let position = "position_example" // String |  (optional) (default to .center)
let width = 987 // Int |  (optional)
let height = 987 // Int |  (optional)
let blur = 987 // Int |  (optional)
let r = 987 // Int | Red (optional)
let g = 987 // Int | Green (optional)
let b = 987 // Int | Blue (optional)
let brightness = 987 // Float | Brightness multiplier (optional)
let saturation = 987 // Float | Saturation multiplier (optional)
let hue = 987 // Int | Hue rotation in degrees (optional)
let lightness = 987 // Int | Lightness addend (optional)
let html = true // Bool |  (optional)
let json = true // Bool |  (optional)

CatsAPI.catGet(id: id, type: type, filter: filter, fit: fit, position: position, width: width, height: height, blur: blur, r: r, g: g, b: b, brightness: brightness, saturation: saturation, hue: hue, lightness: lightness, html: html, json: json) { (response, error) in
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
 **type** | **String** |  | [optional] 
 **filter** | **String** |  | [optional] 
 **fit** | **String** |  | [optional] 
 **position** | **String** |  | [optional] [default to .center]
 **width** | **Int** |  | [optional] 
 **height** | **Int** |  | [optional] 
 **blur** | **Int** |  | [optional] 
 **r** | **Int** | Red | [optional] 
 **g** | **Int** | Green | [optional] 
 **b** | **Int** | Blue | [optional] 
 **brightness** | **Float** | Brightness multiplier | [optional] 
 **saturation** | **Float** | Saturation multiplier | [optional] 
 **hue** | **Int** | Hue rotation in degrees | [optional] 
 **lightness** | **Int** | Lightness addend | [optional] 
 **html** | **Bool** |  | [optional] 
 **json** | **Bool** |  | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catGetText**
```swift
    open class func catGetText(id: String, text: String, font: Font_catGetText? = nil, fontSize: Int? = nil, fontColor: String? = nil, fontBackground: String? = nil, type: ModelType_catGetText? = nil, filter: Filter_catGetText? = nil, fit: Fit_catGetText? = nil, position: Position_catGetText? = nil, width: Int? = nil, height: Int? = nil, blur: Int? = nil, r: Int? = nil, g: Int? = nil, b: Int? = nil, brightness: Float? = nil, saturation: Float? = nil, hue: Int? = nil, lightness: Int? = nil, html: Bool? = nil, json: Bool? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Get cat by id saying text

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let text = "text_example" // String | 
let font = "font_example" // String |  (optional) (default to .impact)
let fontSize = 987 // Int |  (optional) (default to 30)
let fontColor = "fontColor_example" // String |  (optional) (default to "#000")
let fontBackground = "fontBackground_example" // String |  (optional) (default to "none")
let type = "type_example" // String |  (optional)
let filter = "filter_example" // String |  (optional)
let fit = "fit_example" // String |  (optional)
let position = "position_example" // String |  (optional) (default to .center)
let width = 987 // Int |  (optional)
let height = 987 // Int |  (optional)
let blur = 987 // Int |  (optional)
let r = 987 // Int | Red (optional)
let g = 987 // Int | Green (optional)
let b = 987 // Int | Blue (optional)
let brightness = 987 // Float | Brightness multiplier (optional)
let saturation = 987 // Float | Saturation multiplier (optional)
let hue = 987 // Int | Hue rotation in degrees (optional)
let lightness = 987 // Int | Lightness addend (optional)
let html = true // Bool |  (optional)
let json = true // Bool |  (optional)

CatsAPI.catGetText(id: id, text: text, font: font, fontSize: fontSize, fontColor: fontColor, fontBackground: fontBackground, type: type, filter: filter, fit: fit, position: position, width: width, height: height, blur: blur, r: r, g: g, b: b, brightness: brightness, saturation: saturation, hue: hue, lightness: lightness, html: html, json: json) { (response, error) in
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
 **text** | **String** |  | 
 **font** | **String** |  | [optional] [default to .impact]
 **fontSize** | **Int** |  | [optional] [default to 30]
 **fontColor** | **String** |  | [optional] [default to &quot;#000&quot;]
 **fontBackground** | **String** |  | [optional] [default to &quot;none&quot;]
 **type** | **String** |  | [optional] 
 **filter** | **String** |  | [optional] 
 **fit** | **String** |  | [optional] 
 **position** | **String** |  | [optional] [default to .center]
 **width** | **Int** |  | [optional] 
 **height** | **Int** |  | [optional] 
 **blur** | **Int** |  | [optional] 
 **r** | **Int** | Red | [optional] 
 **g** | **Int** | Green | [optional] 
 **b** | **Int** | Blue | [optional] 
 **brightness** | **Float** | Brightness multiplier | [optional] 
 **saturation** | **Float** | Saturation multiplier | [optional] 
 **hue** | **Int** | Hue rotation in degrees | [optional] 
 **lightness** | **Int** | Lightness addend | [optional] 
 **html** | **Bool** |  | [optional] 
 **json** | **Bool** |  | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catRandom**
```swift
    open class func catRandom(type: ModelType_catRandom? = nil, filter: Filter_catRandom? = nil, fit: Fit_catRandom? = nil, position: Position_catRandom? = nil, width: Int? = nil, height: Int? = nil, blur: Int? = nil, r: Int? = nil, g: Int? = nil, b: Int? = nil, brightness: Float? = nil, saturation: Float? = nil, hue: Int? = nil, lightness: Int? = nil, html: Bool? = nil, json: Bool? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Get a random cat

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = "type_example" // String |  (optional)
let filter = "filter_example" // String |  (optional)
let fit = "fit_example" // String |  (optional)
let position = "position_example" // String |  (optional) (default to .center)
let width = 987 // Int |  (optional)
let height = 987 // Int |  (optional)
let blur = 987 // Int |  (optional)
let r = 987 // Int | Red (optional)
let g = 987 // Int | Green (optional)
let b = 987 // Int | Blue (optional)
let brightness = 987 // Float | Brightness multiplier (optional)
let saturation = 987 // Float | Saturation multiplier (optional)
let hue = 987 // Int | Hue rotation in degrees (optional)
let lightness = 987 // Int | Lightness addend (optional)
let html = true // Bool |  (optional)
let json = true // Bool |  (optional)

CatsAPI.catRandom(type: type, filter: filter, fit: fit, position: position, width: width, height: height, blur: blur, r: r, g: g, b: b, brightness: brightness, saturation: saturation, hue: hue, lightness: lightness, html: html, json: json) { (response, error) in
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
 **type** | **String** |  | [optional] 
 **filter** | **String** |  | [optional] 
 **fit** | **String** |  | [optional] 
 **position** | **String** |  | [optional] [default to .center]
 **width** | **Int** |  | [optional] 
 **height** | **Int** |  | [optional] 
 **blur** | **Int** |  | [optional] 
 **r** | **Int** | Red | [optional] 
 **g** | **Int** | Green | [optional] 
 **b** | **Int** | Blue | [optional] 
 **brightness** | **Float** | Brightness multiplier | [optional] 
 **saturation** | **Float** | Saturation multiplier | [optional] 
 **hue** | **Int** | Hue rotation in degrees | [optional] 
 **lightness** | **Int** | Lightness addend | [optional] 
 **html** | **Bool** |  | [optional] 
 **json** | **Bool** |  | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catRandomTag**
```swift
    open class func catRandomTag(tag: String, type: ModelType_catRandomTag? = nil, filter: Filter_catRandomTag? = nil, fit: Fit_catRandomTag? = nil, position: Position_catRandomTag? = nil, width: Int? = nil, height: Int? = nil, blur: Int? = nil, r: Int? = nil, g: Int? = nil, b: Int? = nil, brightness: Float? = nil, saturation: Float? = nil, hue: Int? = nil, lightness: Int? = nil, html: Bool? = nil, json: Bool? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Get random cat by tag

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tag = "tag_example" // String | 
let type = "type_example" // String |  (optional)
let filter = "filter_example" // String |  (optional)
let fit = "fit_example" // String |  (optional)
let position = "position_example" // String |  (optional) (default to .center)
let width = 987 // Int |  (optional)
let height = 987 // Int |  (optional)
let blur = 987 // Int |  (optional)
let r = 987 // Int | Red (optional)
let g = 987 // Int | Green (optional)
let b = 987 // Int | Blue (optional)
let brightness = 987 // Float | Brightness multiplier (optional)
let saturation = 987 // Float | Saturation multiplier (optional)
let hue = 987 // Int | Hue rotation in degrees (optional)
let lightness = 987 // Int | Lightness addend (optional)
let html = true // Bool |  (optional)
let json = true // Bool |  (optional)

CatsAPI.catRandomTag(tag: tag, type: type, filter: filter, fit: fit, position: position, width: width, height: height, blur: blur, r: r, g: g, b: b, brightness: brightness, saturation: saturation, hue: hue, lightness: lightness, html: html, json: json) { (response, error) in
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
 **tag** | **String** |  | 
 **type** | **String** |  | [optional] 
 **filter** | **String** |  | [optional] 
 **fit** | **String** |  | [optional] 
 **position** | **String** |  | [optional] [default to .center]
 **width** | **Int** |  | [optional] 
 **height** | **Int** |  | [optional] 
 **blur** | **Int** |  | [optional] 
 **r** | **Int** | Red | [optional] 
 **g** | **Int** | Green | [optional] 
 **b** | **Int** | Blue | [optional] 
 **brightness** | **Float** | Brightness multiplier | [optional] 
 **saturation** | **Float** | Saturation multiplier | [optional] 
 **hue** | **Int** | Hue rotation in degrees | [optional] 
 **lightness** | **Int** | Lightness addend | [optional] 
 **html** | **Bool** |  | [optional] 
 **json** | **Bool** |  | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catRandomTagText**
```swift
    open class func catRandomTagText(tag: String, text: String, font: Font_catRandomTagText? = nil, fontSize: Int? = nil, fontColor: String? = nil, fontBackground: String? = nil, type: ModelType_catRandomTagText? = nil, filter: Filter_catRandomTagText? = nil, fit: Fit_catRandomTagText? = nil, position: Position_catRandomTagText? = nil, width: Int? = nil, height: Int? = nil, blur: Int? = nil, r: Int? = nil, g: Int? = nil, b: Int? = nil, brightness: Float? = nil, saturation: Float? = nil, hue: Int? = nil, lightness: Int? = nil, html: Bool? = nil, json: Bool? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Get random cat by tag saying text

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tag = "tag_example" // String | 
let text = "text_example" // String | 
let font = "font_example" // String |  (optional) (default to .impact)
let fontSize = 987 // Int |  (optional) (default to 30)
let fontColor = "fontColor_example" // String |  (optional) (default to "#000")
let fontBackground = "fontBackground_example" // String |  (optional) (default to "none")
let type = "type_example" // String |  (optional)
let filter = "filter_example" // String |  (optional)
let fit = "fit_example" // String |  (optional)
let position = "position_example" // String |  (optional) (default to .center)
let width = 987 // Int |  (optional)
let height = 987 // Int |  (optional)
let blur = 987 // Int |  (optional)
let r = 987 // Int | Red (optional)
let g = 987 // Int | Green (optional)
let b = 987 // Int | Blue (optional)
let brightness = 987 // Float | Brightness multiplier (optional)
let saturation = 987 // Float | Saturation multiplier (optional)
let hue = 987 // Int | Hue rotation in degrees (optional)
let lightness = 987 // Int | Lightness addend (optional)
let html = true // Bool |  (optional)
let json = true // Bool |  (optional)

CatsAPI.catRandomTagText(tag: tag, text: text, font: font, fontSize: fontSize, fontColor: fontColor, fontBackground: fontBackground, type: type, filter: filter, fit: fit, position: position, width: width, height: height, blur: blur, r: r, g: g, b: b, brightness: brightness, saturation: saturation, hue: hue, lightness: lightness, html: html, json: json) { (response, error) in
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
 **tag** | **String** |  | 
 **text** | **String** |  | 
 **font** | **String** |  | [optional] [default to .impact]
 **fontSize** | **Int** |  | [optional] [default to 30]
 **fontColor** | **String** |  | [optional] [default to &quot;#000&quot;]
 **fontBackground** | **String** |  | [optional] [default to &quot;none&quot;]
 **type** | **String** |  | [optional] 
 **filter** | **String** |  | [optional] 
 **fit** | **String** |  | [optional] 
 **position** | **String** |  | [optional] [default to .center]
 **width** | **Int** |  | [optional] 
 **height** | **Int** |  | [optional] 
 **blur** | **Int** |  | [optional] 
 **r** | **Int** | Red | [optional] 
 **g** | **Int** | Green | [optional] 
 **b** | **Int** | Blue | [optional] 
 **brightness** | **Float** | Brightness multiplier | [optional] 
 **saturation** | **Float** | Saturation multiplier | [optional] 
 **hue** | **Int** | Hue rotation in degrees | [optional] 
 **lightness** | **Int** | Lightness addend | [optional] 
 **html** | **Bool** |  | [optional] 
 **json** | **Bool** |  | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catRandomText**
```swift
    open class func catRandomText(text: String, font: Font_catRandomText? = nil, fontSize: Int? = nil, fontColor: String? = nil, fontBackground: String? = nil, type: ModelType_catRandomText? = nil, filter: Filter_catRandomText? = nil, fit: Fit_catRandomText? = nil, position: Position_catRandomText? = nil, width: Int? = nil, height: Int? = nil, blur: Int? = nil, r: Int? = nil, g: Int? = nil, b: Int? = nil, brightness: Float? = nil, saturation: Float? = nil, hue: Int? = nil, lightness: Int? = nil, html: Bool? = nil, json: Bool? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Get random cat saying text

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let text = "text_example" // String | 
let font = "font_example" // String |  (optional) (default to .impact)
let fontSize = 987 // Int |  (optional) (default to 30)
let fontColor = "fontColor_example" // String |  (optional) (default to "#000")
let fontBackground = "fontBackground_example" // String |  (optional) (default to "none")
let type = "type_example" // String |  (optional)
let filter = "filter_example" // String |  (optional)
let fit = "fit_example" // String |  (optional)
let position = "position_example" // String |  (optional) (default to .center)
let width = 987 // Int |  (optional)
let height = 987 // Int |  (optional)
let blur = 987 // Int |  (optional)
let r = 987 // Int | Red (optional)
let g = 987 // Int | Green (optional)
let b = 987 // Int | Blue (optional)
let brightness = 987 // Float | Brightness multiplier (optional)
let saturation = 987 // Float | Saturation multiplier (optional)
let hue = 987 // Int | Hue rotation in degrees (optional)
let lightness = 987 // Int | Lightness addend (optional)
let html = true // Bool |  (optional)
let json = true // Bool |  (optional)

CatsAPI.catRandomText(text: text, font: font, fontSize: fontSize, fontColor: fontColor, fontBackground: fontBackground, type: type, filter: filter, fit: fit, position: position, width: width, height: height, blur: blur, r: r, g: g, b: b, brightness: brightness, saturation: saturation, hue: hue, lightness: lightness, html: html, json: json) { (response, error) in
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
 **text** | **String** |  | 
 **font** | **String** |  | [optional] [default to .impact]
 **fontSize** | **Int** |  | [optional] [default to 30]
 **fontColor** | **String** |  | [optional] [default to &quot;#000&quot;]
 **fontBackground** | **String** |  | [optional] [default to &quot;none&quot;]
 **type** | **String** |  | [optional] 
 **filter** | **String** |  | [optional] 
 **fit** | **String** |  | [optional] 
 **position** | **String** |  | [optional] [default to .center]
 **width** | **Int** |  | [optional] 
 **height** | **Int** |  | [optional] 
 **blur** | **Int** |  | [optional] 
 **r** | **Int** | Red | [optional] 
 **g** | **Int** | Green | [optional] 
 **b** | **Int** | Blue | [optional] 
 **brightness** | **Float** | Brightness multiplier | [optional] 
 **saturation** | **Float** | Saturation multiplier | [optional] 
 **hue** | **Int** | Hue rotation in degrees | [optional] 
 **lightness** | **Int** | Lightness addend | [optional] 
 **html** | **Bool** |  | [optional] 
 **json** | **Bool** |  | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

