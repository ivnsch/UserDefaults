//
//  UserDefaults.swift
//  UserDefaults
//
//  Created by ischuetz on 21/02/15.
//
//

import UIKit

protocol StringRepresentable {
    var stringValue:String {get}
}

class UserDefaults {
    
    class func value<T>(key:StringRepresentable) -> T? {
        let obj:AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey(key.stringValue)
        return obj as? T? ?? nil
    }
    
    class func setValue<T:AnyObject>(key:StringRepresentable, value:T) {
        NSUserDefaults.standardUserDefaults().setObject(value, forKey: key.stringValue)
    }
    
    class func hasKey(key:StringRepresentable) -> Bool {
        return NSUserDefaults.standardUserDefaults().objectForKey(key.stringValue) != nil
    }
    
    // MARK: Convenience
    // When type inference is not possible. In most cases you don't need this.
    
    class func string(key:StringRepresentable) -> String? {
        return self.value(key)
    }
    
    class func bool(key:StringRepresentable) -> Bool? {
        return self.value(key)
    }
    
    class func int(key:StringRepresentable) -> Int? {
        return self.value(key)
    }
    
    class func double(key:StringRepresentable) -> Double? {
        return self.value(key)
    }
    
    class func float(key:StringRepresentable) -> Float? {
        return self.value(key)
    }
    
}
