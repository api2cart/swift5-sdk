//
// ProductCurrencyAdd200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductCurrencyAdd200ResponseResult: Codable, JSONEncodable, Hashable {

    public var currencyId: String?

    public init(currencyId: String? = nil) {
        self.currencyId = currencyId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyId = "currency_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currencyId, forKey: .currencyId)
    }
}

