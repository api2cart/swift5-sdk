//
// ResponseProductCurrencyListResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseProductCurrencyListResult: Codable, JSONEncodable, Hashable {

    public var totalCount: Int?
    public var currency: [Currency]?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(totalCount: Int? = nil, currency: [Currency]? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.totalCount = totalCount
        self.currency = currency
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalCount = "total_count"
        case currency
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}

