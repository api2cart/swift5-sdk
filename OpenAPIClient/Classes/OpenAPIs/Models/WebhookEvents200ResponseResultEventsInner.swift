//
// WebhookEvents200ResponseResultEventsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WebhookEvents200ResponseResultEventsInner: Codable, JSONEncodable, Hashable {

    public var webhookName: String?
    public var entity: String?
    public var action: String?

    public init(webhookName: String? = nil, entity: String? = nil, action: String? = nil) {
        self.webhookName = webhookName
        self.entity = entity
        self.action = action
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case webhookName = "webhook_name"
        case entity
        case action
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
        try container.encodeIfPresent(entity, forKey: .entity)
        try container.encodeIfPresent(action, forKey: .action)
    }
}

