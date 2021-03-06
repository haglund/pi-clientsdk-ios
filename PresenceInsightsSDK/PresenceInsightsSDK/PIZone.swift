/**
*   PresenceInsightsSDK
*   PIZone.swift
*
*   Object to contain all zone information.
*
*   Copyright (c) 2015 IBM Corporation. All rights reserved.
*
*   Licensed under the Apache License, Version 2.0 (the "License");
*   you may not use this file except in compliance with the License.
*   You may obtain a copy of the License at
*
*   http://www.apache.org/licenses/LICENSE-2.0
*
*   Unless required by applicable law or agreed to in writing, software
*   distributed under the License is distributed on an "AS IS" BASIS,
*   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*   See the License for the specific language governing permissions and
*   limitations under the License.
**/

import UIKit

// MARK: - PIZone object
public class PIZone: NSObject {
    
    // Zone properties
    public var name: String!
    public var x: CGFloat!
    public var y: CGFloat!
    public var width: CGFloat!
    public var height: CGFloat!
    public var tags: [String]!
    
    /**
    Default object initializer.

    - parameter name:    Zone name
    - parameter x:       x coordinate of zone
    - parameter y:       y coordinate of zone
    - parameter width:   width of the zone
    - parameter height:  height of the zone
    - parameter tags:    useful identifying keywords for the zone
    */
    public init(name: String, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, tags: [String]) {
        self.name = name
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.tags = tags
    }
    
    /**
    Convenience initializer to init an empty Object.
    
    - returns: An initialized PIOrg.
    */
    public convenience override init() {
        self.init(name: "", x: 0.0, y: 0.0, width: 0.0, height: 0.0, tags: [])
    }
    
    /**
    Convenience initializer which sets the zone name, and sets defaults for the remaining properties.

    - parameter name: Zone name

    - returns: An initialized PIZone.
    */
    public convenience init(name: String) {
        self.init(name: name, x: 0.0, y: 0.0, width: 0.0, height: 0.0, tags: [])
    }
    
    /**
    Convenience initializer that uses a dictionary to populate the objects properties.

    - parameter dictionary: PIZone represented as a dictionary

    - returns: An initialized PIZone.
    */
    public convenience init(dictionary: [String: AnyObject]) {
        
        self.init(name: "", x: 0.0, y: 0.0, width: 0.0, height: 0.0, tags: [])
        
        self.name = dictionary[Zone.JSON_NAME_KEY] as! String
        self.x = dictionary[Zone.JSON_X_KEY] as! CGFloat
        self.y = dictionary[Zone.JSON_Y_KEY] as! CGFloat
        self.width = dictionary[Zone.JSON_WIDTH_KEY] as! CGFloat
        self.height = dictionary[Zone.JSON_HEIGHT_KEY] as! CGFloat
        self.tags = dictionary[Zone.JSON_TAGS_KEY] as! [String]
        
    }
    
    /**
    Helper function that provides the PIZone object as a dictionary

    - returns: dictionary representation of PIZone
    */
    public func toDictionary() -> [String: AnyObject] {
        
        var dictionary: [String: AnyObject] = [:]
        
        dictionary[Zone.JSON_NAME_KEY] = name
        dictionary[Zone.JSON_X_KEY] = x
        dictionary[Zone.JSON_Y_KEY] = y
        dictionary[Zone.JSON_WIDTH_KEY] = width
        dictionary[Zone.JSON_HEIGHT_KEY] = height
        dictionary[Zone.JSON_TAGS_KEY] = tags
        
        return dictionary

    }
    
}
