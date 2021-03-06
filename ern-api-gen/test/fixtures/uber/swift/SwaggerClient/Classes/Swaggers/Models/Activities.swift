//
// Activities.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Activities: JSONEncodable {
    /** Position in pagination. */
    public var offset: Int32?
    /** Number of items to retrieve (100 max). */
    public var limit: Int32?
    /** Total number of items available. */
    public var count: Int32?
    public var history: [Activity]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["offset"] = self.offset?.encodeToJSON()
        nillableDictionary["limit"] = self.limit?.encodeToJSON()
        nillableDictionary["count"] = self.count?.encodeToJSON()
        nillableDictionary["history"] = self.history?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
