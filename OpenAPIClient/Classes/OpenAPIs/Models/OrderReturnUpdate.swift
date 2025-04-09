//
// OrderReturnUpdate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrderReturnUpdate: Codable, JSONEncodable, Hashable {

    /** Return ID */
    public var returnId: String
    /** Defines the order id */
    public var orderId: String?
    /** Store Id */
    public var storeId: String?
    /** Boolean, whether or not to add the line items back to the store inventory. */
    public var itemRestock: Bool? = false
    /** Defines return request status */
    public var returnStatusId: String?
    /** Specifies staff note */
    public var staffNote: String?
    /** Specifies return comment */
    public var comment: String?
    /** Send notifications to customer after order was created */
    public var sendNotifications: Bool? = false
    /** Defines return reject reason */
    public var rejectReason: String?
    public var orderProducts: [OrderReturnUpdateOrderProductsInner]

    public init(returnId: String, orderId: String? = nil, storeId: String? = nil, itemRestock: Bool? = false, returnStatusId: String? = nil, staffNote: String? = nil, comment: String? = nil, sendNotifications: Bool? = false, rejectReason: String? = nil, orderProducts: [OrderReturnUpdateOrderProductsInner]) {
        self.returnId = returnId
        self.orderId = orderId
        self.storeId = storeId
        self.itemRestock = itemRestock
        self.returnStatusId = returnStatusId
        self.staffNote = staffNote
        self.comment = comment
        self.sendNotifications = sendNotifications
        self.rejectReason = rejectReason
        self.orderProducts = orderProducts
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case returnId = "return_id"
        case orderId = "order_id"
        case storeId = "store_id"
        case itemRestock = "item_restock"
        case returnStatusId = "return_status_id"
        case staffNote = "staff_note"
        case comment
        case sendNotifications = "send_notifications"
        case rejectReason = "reject_reason"
        case orderProducts = "order_products"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(returnId, forKey: .returnId)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(storeId, forKey: .storeId)
        try container.encodeIfPresent(itemRestock, forKey: .itemRestock)
        try container.encodeIfPresent(returnStatusId, forKey: .returnStatusId)
        try container.encodeIfPresent(staffNote, forKey: .staffNote)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(sendNotifications, forKey: .sendNotifications)
        try container.encodeIfPresent(rejectReason, forKey: .rejectReason)
        try container.encode(orderProducts, forKey: .orderProducts)
    }
}

