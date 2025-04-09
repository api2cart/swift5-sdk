//
// OrderStatusRefund.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrderStatusRefund: Codable, JSONEncodable, Hashable {

    public var shipping: Double?
    public var fee: Double?
    public var tax: Double?
    public var totalRefunded: Double?
    public var time: A2CDateTime?
    public var comment: String?
    public var refundedItems: [OrderStatusRefundItem]?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(shipping: Double? = nil, fee: Double? = nil, tax: Double? = nil, totalRefunded: Double? = nil, time: A2CDateTime? = nil, comment: String? = nil, refundedItems: [OrderStatusRefundItem]? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.shipping = shipping
        self.fee = fee
        self.tax = tax
        self.totalRefunded = totalRefunded
        self.time = time
        self.comment = comment
        self.refundedItems = refundedItems
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case shipping
        case fee
        case tax
        case totalRefunded = "total_refunded"
        case time
        case comment
        case refundedItems = "refunded_items"
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(shipping, forKey: .shipping)
        try container.encodeIfPresent(fee, forKey: .fee)
        try container.encodeIfPresent(tax, forKey: .tax)
        try container.encodeIfPresent(totalRefunded, forKey: .totalRefunded)
        try container.encodeIfPresent(time, forKey: .time)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(refundedItems, forKey: .refundedItems)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}

