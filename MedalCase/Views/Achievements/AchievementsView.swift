//
//  AchievementsView.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import SwiftUI

struct AchievementsView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel = AchievementsViewModel()
    @State private var selectedAchievement: Achievement?
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(viewModel.sections) { section in
                    AchievementSectionView(
                        section: section,
                        countLabel: viewModel.earnedPersoRecordsLabel(for: section)
                    ) { achievement in
                        selectedAchievement = achievement
                    }
                }
            }
        }
        
        //Displays a bottom Sheet with the achievement details
        .sheet(item: $selectedAchievement) { achievement in
            AchievementDetailsView(achievement: achievement)
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbarBackground(AppThemeValues.headerColor, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbar {
            //
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                }
            }
            
            //
            ToolbarItem(placement: .principal) {
                Text("Achievements")
                    .font(.system(size: AppThemeValues.headerFontSize, weight: .bold))
                    .foregroundStyle(.white)
            }
            
            //
            ToolbarItem(placement: .navigationBarTrailing) {
                VStack(spacing: 2) {
                    Circle()
                    Circle()
                    Circle()
                }
                .frame(width: 4, height: 16)
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    NavigationStack { AchievementsView() }
}
