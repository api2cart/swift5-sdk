//
// CartMethods200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CartMethods200ResponseResult: Codable, JSONEncodable, Hashable {

    public var method: [String]?

    public init(method: [String]? = nil) {
        self.method = method
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case method
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(method, forKey: .method)
    }
}

