//
// AttributeValueDelete200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AttributeValueDelete200ResponseResult: Codable, JSONEncodable, Hashable {

    public var deleted: Bool?

    public init(deleted: Bool? = nil) {
        self.deleted = deleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deleted, forKey: .deleted)
    }
}

