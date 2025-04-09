//
// CartCatalogPriceRulesCount200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CartCatalogPriceRulesCount200ResponseResult: Codable, JSONEncodable, Hashable {

    public var catalogPriceRulesCount: String?

    public init(catalogPriceRulesCount: String? = nil) {
        self.catalogPriceRulesCount = catalogPriceRulesCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case catalogPriceRulesCount = "catalog_price_rules_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(catalogPriceRulesCount, forKey: .catalogPriceRulesCount)
    }
}

