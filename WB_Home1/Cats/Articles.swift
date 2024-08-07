//
//  Articles.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 07.08.2024.
//

import Foundation
import CatsAPi

struct Articles {
    
    var articles: URL? = nil
    
    init() {}
    
    mutating func loadCats(completion: @escaping (_ data: URL?, _ error: Error?) -> Void) {
        CatsAPI.catGet(id: "cat") { data, error in
            completion(data, error)
        }
    }
}
