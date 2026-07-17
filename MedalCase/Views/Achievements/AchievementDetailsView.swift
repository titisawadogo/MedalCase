//
//  AchievementDetailsView.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import ConfettiSwiftUI
import SwiftUI

struct AchievementDetailsView: View {
    let achievement: Achievement
    
    @State private var confetti = 0
    
    var body: some View {
        VStack(spacing: 16) {
            
            Spacer()
            
            Text(
                achievement.isEarned
                ? "Congratulations! 🎉" : "Not achieved yet!"
            )
            .font(.title)
            .fontWeight(.bold)
            
            Spacer()
            
            Image(achievement.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 140)
                .opacity(achievement.isEarned ? 1.0 : 0.4)
            
            Text(achievement.title)
                .font(.headline)
                .multilineTextAlignment(.center)
            
            Text(achievement.isEarned ? achievement.subtitle : "Not Yet")
                .font(.subheadline)
                .foregroundColor(AppThemeValues.medalCountTextColor)
            
            Spacer()
            
            if achievement.isEarned {
                Button
                {} label: {
                    HStack {
                        Text("Share")
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                .buttonStyle(CustomButtonStyle())
                .confettiCannon(trigger: $confetti, num: 100)
            }
            
        }
        .padding(.horizontal, 24)
        .onAppear {
            if achievement.isEarned {
                confetti += 1
            }
        }
        
    }
}

#Preview {
    AchievementDetailsView(
        achievement: Achievement(
            id: "fastest_5k",
            title: "Fastest 5K",
            subtitle: "00:00",
            imageName: "fastest_5k",
            isEarned: true
        )
    )
}
