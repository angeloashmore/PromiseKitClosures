//
//  PromiseKitClosures.swift
//
//  Created by Angelo Ashmore on 6/2/15.
//  Copyright (c) 2015 Angelo Ashmore. All rights reserved.
//

import Foundation

public struct PromiseKitClosures {
    public static func ResultBlock<T>(#fulfill: T -> Void, reject: NSError -> Void) -> (T, NSError?) -> () {
        return { (result: T, error: NSError?) in
            if let error = error {
                reject(error)
            } else {
                fulfill(result)
            }
        }
    }

    public static func OptionalResultBlock<T>(#fulfill: T -> Void, reject: NSError -> Void) -> (T?, NSError?) -> () {
        return { (result: T?, error: NSError?) in
            if let error = error {
                reject(error)
            } else {
                fulfill(result!)
            }
        }
    }

    public static func PassthroughBlock<T>(#fulfill: T -> Void, reject: NSError -> Void, passthrough: T) -> (NSError?) -> () {
        return { (error: NSError?) in
            if let error = error {
                reject(error)
            } else {
                fulfill(passthrough)
            }
        }
    }
}
