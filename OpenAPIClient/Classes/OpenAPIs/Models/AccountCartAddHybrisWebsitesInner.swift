//
// AccountCartAddHybrisWebsitesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountCartAddHybrisWebsitesInner: Codable, JSONEncodable, Hashable {

    public static let storeIdsRule = ArrayRule(minItems: 1, maxItems: nil, uniqueItems: false)
    public var uid: String
    public var url: String
    public var storeIds: [String]

    public init(uid: String, url: String, storeIds: [String]) {
        self.uid = uid
        self.url = url
        self.storeIds = storeIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uid
        case url
        case storeIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(uid, forKey: .uid)
        try container.encode(url, forKey: .url)
        try container.encode(storeIds, forKey: .storeIds)
    }
}

