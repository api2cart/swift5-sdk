//
// ModelResponseTaxClassList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ModelResponseTaxClassList: Codable, JSONEncodable, Hashable {

    public var returnCode: Int?
    public var returnMessage: String?
    public var pagination: Pagination?
    public var result: ResponseTaxClassListResult?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(returnCode: Int? = nil, returnMessage: String? = nil, pagination: Pagination? = nil, result: ResponseTaxClassListResult? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.returnCode = returnCode
        self.returnMessage = returnMessage
        self.pagination = pagination
        self.result = result
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case returnCode = "return_code"
        case returnMessage = "return_message"
        case pagination
        case result
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(returnCode, forKey: .returnCode)
        try container.encodeIfPresent(returnMessage, forKey: .returnMessage)
        try container.encodeIfPresent(pagination, forKey: .pagination)
        try container.encodeIfPresent(result, forKey: .result)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}

