//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 7/3/22.
//

import Foundation
import SwiftUI


extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
