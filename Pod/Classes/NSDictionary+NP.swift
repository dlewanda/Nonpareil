//
//  Dictionary+NP.swift
//  Pods
//
//  Created by David Lewanda on 12/1/15.
//
//

import Foundation

extension Dictionary {
    func mergeWithDictionary(dict: Dictionary) -> Dictionary {
        var newDict = self

//        for (key1, value1) in dict {
//            var found = false
//            for (key2, value2) in self {
//                let key1 = key1
//                let key2 = key2
//                if key1 == key2 {
//                    found = true
//                    if self[key2].isKindOfClass(Dictionary.self) &&
//                        dict[key1].isKindOfClass(Dictionary.self) {
//                            let currentDict: Dictionary = self[key2]
//                            var mergeDict: Dictionary = dict[key1]
//                            newDict[key2] = currentDict.mergeWithDictionary(mergeDict)
//                    }
//                }
//            }
//        }

        let returnCopy = newDict

        return returnCopy
    }

    static func dictionaryFromKeyArray(keyArray: NSArray?, finalObject: AnyObject) -> [String:String]? {
        if keyArray == nil || keyArray?.count <= 0 {
            return nil
        } else {
            let keyArray = keyArray!
            let firstKey = keyArray[0]
            let dict:[String:String] = [firstKey as! String : ""]

            return dict
        }
    }
}
