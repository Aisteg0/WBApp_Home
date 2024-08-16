//
//  Extention+Sequence.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 13.08.2024.
//

import Foundation

extension Sequence {
    func asyncMap<T>(
        _ transform: (Element) async throws -> T
    ) async rethrows -> [T] {
        var values = [T]()

        for element in self {
            try await values.append(transform(element))
        }

        return values
    }
}
