//
//  NSString+NP.swift
//  Pods
//
//  Created by David Lewanda on 12/1/15.
//
//

import Foundation

extension NSString {
    static func stringByAppendingParamsToUrl(params: Dictionary<String,String>, url: NSURL) -> String? {
        let components = NSURLComponents(string: url.absoluteString)
        var addedQueryString = ""
        for (key,value) in params {
            if addedQueryString.characters.count > 0  {
                addedQueryString += "&"
            }
            addedQueryString += "\(key)=\(value)"
        }

        if let components = components {
            addedQueryString += "&"
            addedQueryString += components.query!
            components.query = addedQueryString;
        }

        return components?.URL?.absoluteString
    }

    static func stringByAppendingParamsToString(params: Dictionary<String, String>, string: String) -> String? {
        return self.stringByAppendingParamsToUrl(params, url: NSURL(string: string)!)
    }
}