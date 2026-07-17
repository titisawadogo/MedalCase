//
//  CustomButtonStyle.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(AppThemeValues.headerColor)
            .cornerRadius(50)
        
    }
}
