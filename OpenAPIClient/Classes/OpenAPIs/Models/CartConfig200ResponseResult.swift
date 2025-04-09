//
// CartConfig200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CartConfig200ResponseResult: Codable, JSONEncodable, Hashable {

    public var storeName: String?
    public var storeUrl: String?
    public var dbPrefix: String?

    public init(storeName: String? = nil, storeUrl: String? = nil, dbPrefix: String? = nil) {
        self.storeName = storeName
        self.storeUrl = storeUrl
        self.dbPrefix = dbPrefix
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case storeName = "store_name"
        case storeUrl = "store_url"
        case dbPrefix = "db_prefix"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(storeName, forKey: .storeName)
        try container.encodeIfPresent(storeUrl, forKey: .storeUrl)
        try container.encodeIfPresent(dbPrefix, forKey: .dbPrefix)
    }
}

