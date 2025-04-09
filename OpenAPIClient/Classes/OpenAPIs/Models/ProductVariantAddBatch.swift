//
// ProductVariantAddBatch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductVariantAddBatch: Codable, JSONEncodable, Hashable {

    public static let payloadRule = ArrayRule(minItems: 1, maxItems: 250, uniqueItems: false)
    public var clearCache: Bool? = false
    public var reindex: Bool? = false
    /** Contains an array of product variants objects. The list of properties may vary depending on the specific platform. */
    public var payload: [ProductVariantAddBatchPayloadInner]

    public init(clearCache: Bool? = false, reindex: Bool? = false, payload: [ProductVariantAddBatchPayloadInner]) {
        self.clearCache = clearCache
        self.reindex = reindex
        self.payload = payload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case clearCache = "clear_cache"
        case reindex
        case payload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(clearCache, forKey: .clearCache)
        try container.encodeIfPresent(reindex, forKey: .reindex)
        try container.encode(payload, forKey: .payload)
    }
}

