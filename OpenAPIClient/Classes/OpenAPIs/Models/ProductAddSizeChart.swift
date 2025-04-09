//
// ProductAddSizeChart.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A size chart for the product. Only one property is supported. */
public struct ProductAddSizeChart: Codable, JSONEncodable, Hashable {

    public static let idRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let urlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    /** Defines a pre-generated size chart template */
    public var id: String?
    /** Defines a size chart image URL */
    public var url: String?

    public init(id: String? = nil, url: String? = nil) {
        self.id = id
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(url, forKey: .url)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ProductAddSizeChart: Identifiable {}
