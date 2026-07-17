//
//  AchievementCard.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import SwiftUI

struct AchievementCard: View {
    let achievement: Achievement
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            VStack(spacing: 6) {
                Image(achievement.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                
                Text(achievement.title)
                    .font(.system(size: AppThemeValues.cardTextFontSize))
                    .foregroundColor(AppThemeValues.cardTextColor)
                    .multilineTextAlignment(.center).fontWeight(.bold).padding(
                        .horizontal,
                        5
                    )
                
                Text(achievement.subtitle)
                    .font(.system(size: AppThemeValues.cardTextFontSize))
                    .foregroundColor(AppThemeValues.medalCountTextColor)
            }
            .opacity(achievement.isEarned ? 1.0 : 0.4)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    AchievementCard(
        achievement: Achievement(
            id: "fastest_5k",
            title: "Fastest 5K",
            subtitle: "00:00",
            imageName: "fastest_5k",
            isEarned: true
        )
    ) {}
}
