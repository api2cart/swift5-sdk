//
// ProductAddSpecificsInnerBookingDetails.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductAddSpecificsInnerBookingDetails: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case date = "date"
        case dateTime = "date_time"
    }
    public enum TimeStrictType: String, Codable, CaseIterable {
        case days = "days"
        case hours = "hours"
        case minutes = "minutes"
    }
    public static let locationRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let availabilitiesRule = ArrayRule(minItems: 1, maxItems: nil, uniqueItems: false)
    public static let overridesRule = ArrayRule(minItems: 1, maxItems: nil, uniqueItems: false)
    public var location: String
    public var type: ModelType
    public var sessionDuration: Int?
    public var sessionGap: Int?
    public var sessionsCount: Int
    public var timeStrictValue: Double
    public var timeStrictType: TimeStrictType = .days
    public var availabilities: [ProductAddSpecificsInnerBookingDetailsAvailabilitiesInner]
    public var overrides: [ProductAddSpecificsInnerBookingDetailsOverridesInner]?

    public init(location: String, type: ModelType, sessionDuration: Int? = nil, sessionGap: Int? = nil, sessionsCount: Int, timeStrictValue: Double, timeStrictType: TimeStrictType = .days, availabilities: [ProductAddSpecificsInnerBookingDetailsAvailabilitiesInner], overrides: [ProductAddSpecificsInnerBookingDetailsOverridesInner]? = nil) {
        self.location = location
        self.type = type
        self.sessionDuration = sessionDuration
        self.sessionGap = sessionGap
        self.sessionsCount = sessionsCount
        self.timeStrictValue = timeStrictValue
        self.timeStrictType = timeStrictType
        self.availabilities = availabilities
        self.overrides = overrides
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case location
        case type
        case sessionDuration = "session_duration"
        case sessionGap = "session_gap"
        case sessionsCount = "sessions_count"
        case timeStrictValue = "time_strict_value"
        case timeStrictType = "time_strict_type"
        case availabilities
        case overrides
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(location, forKey: .location)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(sessionDuration, forKey: .sessionDuration)
        try container.encodeIfPresent(sessionGap, forKey: .sessionGap)
        try container.encode(sessionsCount, forKey: .sessionsCount)
        try container.encode(timeStrictValue, forKey: .timeStrictValue)
        try container.encode(timeStrictType, forKey: .timeStrictType)
        try container.encode(availabilities, forKey: .availabilities)
        try container.encodeIfPresent(overrides, forKey: .overrides)
    }
}

