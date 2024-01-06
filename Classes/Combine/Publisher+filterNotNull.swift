//
//  Publisher+filterNotNull.swift
//  Common
//
//  Created by Lucas Calheiros on 25/12/23.
//

import Combine

@available(iOS 13, *)
public extension Publisher where Self.Failure == Never  {
    func filterNotNull<T>() -> AnyPublisher<T, Never> where Self.Output == T? {
        return self.compactMap { $0 }.eraseToAnyPublisher()
    }
}
