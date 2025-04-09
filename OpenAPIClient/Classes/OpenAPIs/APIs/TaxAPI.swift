//
// TaxAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TaxAPI {

    /**
     tax.class.info
     
     - parameter taxClassId: (query) Retrieves taxes specified by class id 
     - parameter storeId: (query) Store Id (optional)
     - parameter langId: (query) Language id (optional)
     - parameter params: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "tax_class_id,name,avail")
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional)
     - parameter exclude: (query) Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func taxClassInfo(taxClassId: String, storeId: String? = nil, langId: String? = nil, params: String? = nil, responseFields: String? = nil, exclude: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ModelResponseTaxClassInfo?, _ error: Error?) -> Void)) -> RequestTask {
        return taxClassInfoWithRequestBuilder(taxClassId: taxClassId, storeId: storeId, langId: langId, params: params, responseFields: responseFields, exclude: exclude).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     tax.class.info
     - GET /tax.class.info.json
     - Use this method to get information about a tax class and its rates. It allows you to calculate the tax percentage for a specific customer's address. This information contains relatively static data that rarely changes, so API2Cart may cache certain data to reduce the load on the store and speed up request execution. We also recommend that you cache the response of this method on your side to save requests. If you need to clear the cache for a specific store, use the cart.validate method.
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter taxClassId: (query) Retrieves taxes specified by class id 
     - parameter storeId: (query) Store Id (optional)
     - parameter langId: (query) Language id (optional)
     - parameter params: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "tax_class_id,name,avail")
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional)
     - parameter exclude: (query) Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
     - returns: RequestBuilder<ModelResponseTaxClassInfo> 
     */
    open class func taxClassInfoWithRequestBuilder(taxClassId: String, storeId: String? = nil, langId: String? = nil, params: String? = nil, responseFields: String? = nil, exclude: String? = nil) -> RequestBuilder<ModelResponseTaxClassInfo> {
        let localVariablePath = "/tax.class.info.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tax_class_id": (wrappedValue: taxClassId.encodeToJSON(), isExplode: true),
            "store_id": (wrappedValue: storeId?.encodeToJSON(), isExplode: true),
            "lang_id": (wrappedValue: langId?.encodeToJSON(), isExplode: true),
            "params": (wrappedValue: params?.encodeToJSON(), isExplode: true),
            "response_fields": (wrappedValue: responseFields?.encodeToJSON(), isExplode: true),
            "exclude": (wrappedValue: exclude?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ModelResponseTaxClassInfo>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     tax.class.list
     
     - parameter createdTo: (query) Retrieve entities to their creation date (optional)
     - parameter createdFrom: (query) Retrieve entities from their creation date (optional)
     - parameter modifiedTo: (query) Retrieve entities to their modification date (optional)
     - parameter modifiedFrom: (query) Retrieve entities from their modification date (optional)
     - parameter findValue: (query) Entity search that is specified by some value (optional)
     - parameter findWhere: (query) Tax class search that is specified by field (optional)
     - parameter storeId: (query) Store Id (optional)
     - parameter count: (query) This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
     - parameter pageCursor: (query) Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) (optional)
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "{return_code,return_message,pagination,result}")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func taxClassList(createdTo: String? = nil, createdFrom: String? = nil, modifiedTo: String? = nil, modifiedFrom: String? = nil, findValue: String? = nil, findWhere: String? = nil, storeId: String? = nil, count: Int? = nil, pageCursor: String? = nil, responseFields: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ModelResponseTaxClassList?, _ error: Error?) -> Void)) -> RequestTask {
        return taxClassListWithRequestBuilder(createdTo: createdTo, createdFrom: createdFrom, modifiedTo: modifiedTo, modifiedFrom: modifiedFrom, findValue: findValue, findWhere: findWhere, storeId: storeId, count: count, pageCursor: pageCursor, responseFields: responseFields).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     tax.class.list
     - GET /tax.class.list.json
     - Get list of tax classes from your store.
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter createdTo: (query) Retrieve entities to their creation date (optional)
     - parameter createdFrom: (query) Retrieve entities from their creation date (optional)
     - parameter modifiedTo: (query) Retrieve entities to their modification date (optional)
     - parameter modifiedFrom: (query) Retrieve entities from their modification date (optional)
     - parameter findValue: (query) Entity search that is specified by some value (optional)
     - parameter findWhere: (query) Tax class search that is specified by field (optional)
     - parameter storeId: (query) Store Id (optional)
     - parameter count: (query) This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
     - parameter pageCursor: (query) Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) (optional)
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "{return_code,return_message,pagination,result}")
     - returns: RequestBuilder<ModelResponseTaxClassList> 
     */
    open class func taxClassListWithRequestBuilder(createdTo: String? = nil, createdFrom: String? = nil, modifiedTo: String? = nil, modifiedFrom: String? = nil, findValue: String? = nil, findWhere: String? = nil, storeId: String? = nil, count: Int? = nil, pageCursor: String? = nil, responseFields: String? = nil) -> RequestBuilder<ModelResponseTaxClassList> {
        let localVariablePath = "/tax.class.list.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "created_to": (wrappedValue: createdTo?.encodeToJSON(), isExplode: true),
            "created_from": (wrappedValue: createdFrom?.encodeToJSON(), isExplode: true),
            "modified_to": (wrappedValue: modifiedTo?.encodeToJSON(), isExplode: true),
            "modified_from": (wrappedValue: modifiedFrom?.encodeToJSON(), isExplode: true),
            "find_value": (wrappedValue: findValue?.encodeToJSON(), isExplode: true),
            "find_where": (wrappedValue: findWhere?.encodeToJSON(), isExplode: true),
            "store_id": (wrappedValue: storeId?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "page_cursor": (wrappedValue: pageCursor?.encodeToJSON(), isExplode: true),
            "response_fields": (wrappedValue: responseFields?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ModelResponseTaxClassList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
