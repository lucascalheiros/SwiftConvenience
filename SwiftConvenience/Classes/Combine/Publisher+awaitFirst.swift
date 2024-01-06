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
        var firstValue: T? = nil
        for try await value in self.values {
            firstValue = value
            break
        }
        return firstValue!
    }
}
