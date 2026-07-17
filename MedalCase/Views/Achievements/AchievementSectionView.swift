//
//  AchievementSectionView.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import SwiftUI

struct AchievementSectionView: View {
    let section: AchievementSection
    let countLabel: String?
    let onTap: (Achievement) -> Void
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            sectionHeader
            achievementGrid
        }
    }
    
    //Section body
    private var sectionHeader: some View {
        HStack {
            Text(section.title)
                .font(.system(size: AppThemeValues.sectionTitleFontSize))
                .foregroundColor(AppThemeValues.medalCountTextColor).fontWeight(
                    .bold
                )
            
            Spacer()
            
            if let countLabel {
                Text(countLabel)
                    .font(.system(size: AppThemeValues.medalCountFontSize))
                    .foregroundColor(AppThemeValues.medalCountTextColor)
            }
        }
        .padding(.horizontal, 22)
        .padding(.vertical, 6)
        .frame(maxWidth: .infinity)
        .background(AppThemeValues.sectionHeaderBackground)
    }
    
    //Achievements Grid Body
    private var achievementGrid: some View {
        LazyVGrid(columns: columns, spacing: 35) {
            ForEach(section.achievements) { achievement in
                AchievementCard(achievement: achievement) {
                    onTap(achievement)
                }
            }
        }
        .padding(.horizontal, 35)
        .padding(.top, 25)
        .padding(.bottom, 30)
        .frame(maxWidth: .infinity)
        .background(AppThemeValues.backgroundColor)
    }
}

#Preview {
    AchievementSectionView(
        section: AchievementsDatabase.loadSections()[0],
        countLabel: "4 of 6",
        onTap: { _ in }
    )
}
