//
//  APIMethod.swift
//  Fault Build
//
//  Created by Zane on 8/4/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

struct Resource {
    let name: String
    let url: URL
    let method: String
    
    init(name: String, url: URL, method: String?) {
        self.name = name
        self.url = url
        self.method = method ?? "GET"
    }
}
