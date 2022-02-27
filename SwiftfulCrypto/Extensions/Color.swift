//
//  Color.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 24/2/2022.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
    static let ironTheme = IronTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct IronTheme {
    let ironmanDarkRed = Color("IronmanDarkRed")
    let ironmanGold = Color("IronmanGold")
    let ironmanMediumRed = Color("IronmanMediumRed")
    let ironmanRed = Color("IronmanRed")
    let ironmanYellow = Color("IronmanYellow")
}
