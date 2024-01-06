//
//  Publisher+awaitFirst.swift
//  Common
//
//  Created by Lucas Calheiros on 06/12/23.
//

import Combine

@available(iOS 13, *)
public extension Publisher where Self.Failure == Never {
    @available(iOS 15, *)
    func awaitFirst<T>() async throws -> T where Self.Output == T {
        for try await value in self.values {
            return value
        }
        throw fatalError("Value never came")
    }
}
