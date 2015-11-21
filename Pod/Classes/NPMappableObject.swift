//
//  NPMappableObject.swift
//  Pods
//
//  Created by David Lewanda on 11/20/15.
//
//

import Foundation

protocol NPMappableObject {
    static var mapping: NPMappableObject {get}
}