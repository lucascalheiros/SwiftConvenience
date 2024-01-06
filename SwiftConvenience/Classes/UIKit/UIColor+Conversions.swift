//
//  UIColor+Conversions.swift
//  Common
//
//  Created by Lucas Calheiros on 24/12/23.
//

import UIKit
import SwiftUI

public extension UIColor {
    @available(iOS 13.0, *)
    var suColor: Color {
        Color(self)
    }
}
