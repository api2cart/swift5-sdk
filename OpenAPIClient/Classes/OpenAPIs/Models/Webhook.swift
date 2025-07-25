//
// Webhook.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Webhook: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var label: String?
    public var storeId: String?
    public var langId: String?
    public var active: Bool?
    public var callback: String?
    public var fields: String?
    public var responseFields: String?
    public var createdAt: String?
    public var updatedAt: String?
    public var entity: String?
    public var action: String?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(id: Int? = nil, label: String? = nil, storeId: String? = nil, langId: String? = nil, active: Bool? = nil, callback: String? = nil, fields: String? = nil, responseFields: String? = nil, createdAt: String? = nil, updatedAt: String? = nil, entity: String? = nil, action: String? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.id = id
        self.label = label
        self.storeId = storeId
        self.langId = langId
        self.active = active
        self.callback = callback
        self.fields = fields
        self.responseFields = responseFields
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.entity = entity
        self.action = action
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case label
        case storeId = "store_id"
        case langId = "lang_id"
        case active
        case callback
        case fields
        case responseFields = "response_fields"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case entity
        case action
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(label, forKey: .label)
        try container.encodeIfPresent(storeId, forKey: .storeId)
        try container.encodeIfPresent(langId, forKey: .langId)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(callback, forKey: .callback)
        try container.encodeIfPresent(fields, forKey: .fields)
        try container.encodeIfPresent(responseFields, forKey: .responseFields)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(entity, forKey: .entity)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Webhook: Identifiable {}
