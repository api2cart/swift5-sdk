//
// Brand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Brand: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var name: String?
    public var createdTime: String?
    public var modifiedTime: String?
    public var fullDescription: String?
    public var shortDescription: String?
    public var storesIds: [String]?
    public var active: Bool?
    public var url: String?
    public var metaTitle: String?
    public var metaKeywords: String?
    public var metaDescription: String?
    public var images: [Image]?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(id: String? = nil, name: String? = nil, createdTime: String? = nil, modifiedTime: String? = nil, fullDescription: String? = nil, shortDescription: String? = nil, storesIds: [String]? = nil, active: Bool? = nil, url: String? = nil, metaTitle: String? = nil, metaKeywords: String? = nil, metaDescription: String? = nil, images: [Image]? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.id = id
        self.name = name
        self.createdTime = createdTime
        self.modifiedTime = modifiedTime
        self.fullDescription = fullDescription
        self.shortDescription = shortDescription
        self.storesIds = storesIds
        self.active = active
        self.url = url
        self.metaTitle = metaTitle
        self.metaKeywords = metaKeywords
        self.metaDescription = metaDescription
        self.images = images
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case createdTime = "created_time"
        case modifiedTime = "modified_time"
        case fullDescription = "full_description"
        case shortDescription = "short_description"
        case storesIds = "stores_ids"
        case active
        case url
        case metaTitle = "meta_title"
        case metaKeywords = "meta_keywords"
        case metaDescription = "meta_description"
        case images
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(createdTime, forKey: .createdTime)
        try container.encodeIfPresent(modifiedTime, forKey: .modifiedTime)
        try container.encodeIfPresent(fullDescription, forKey: .fullDescription)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(storesIds, forKey: .storesIds)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(metaTitle, forKey: .metaTitle)
        try container.encodeIfPresent(metaKeywords, forKey: .metaKeywords)
        try container.encodeIfPresent(metaDescription, forKey: .metaDescription)
        try container.encodeIfPresent(images, forKey: .images)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Brand: Identifiable {}
