//
// CartList200ResponseResultSupportedCartsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CartList200ResponseResultSupportedCartsInner: Codable, JSONEncodable, Hashable {

    public var cartId: String?
    public var cartName: String?
    public var cartVersions: String?
    public var params: [String]?

    public init(cartId: String? = nil, cartName: String? = nil, cartVersions: String? = nil, params: [String]? = nil) {
        self.cartId = cartId
        self.cartName = cartName
        self.cartVersions = cartVersions
        self.params = params
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cartId = "cart_id"
        case cartName = "cart_name"
        case cartVersions = "cart_versions"
        case params
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cartId, forKey: .cartId)
        try container.encodeIfPresent(cartName, forKey: .cartName)
        try container.encodeIfPresent(cartVersions, forKey: .cartVersions)
        try container.encodeIfPresent(params, forKey: .params)
    }
}

