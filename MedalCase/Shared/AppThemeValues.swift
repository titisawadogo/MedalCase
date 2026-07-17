//
//  AppThemeValues.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import SwiftUI


enum AppThemeValues {
    
    //Colors
    static let headerColor = Color(hex: "63C6D4")
    static let backgroundColor = Color(hex: "FFFFFF")
    static let sectionHeaderBackground = Color(hex: "F7F7F7")
    static let medalCountTextColor = Color(hex: "666666")
    static let cardTextColor = Color(hex: "000000")
    
    //Font Sizes
    static let headerFontSize: CGFloat = 16
    static let sectionTitleFontSize: CGFloat = 14
    static let medalCountFontSize: CGFloat = 14
    static let cardTextFontSize: CGFloat = 12
    
}

extension Color {
    init(hex: String) {
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255
        let g = Double((int >> 8) & 0xFF) / 255
        let b = Double(int & 0xFF) / 255
        self.init(red: r, green: g, blue: b)
    }
}
