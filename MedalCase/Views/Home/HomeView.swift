//
//  HomeView.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 22) {

            Image("homeViewImage")
                .resizable()
                .scaledToFit()
                .frame(
                    height: 350
                )

            Text("See all the medals you've earned and track your achievements!")
                .multilineTextAlignment(.center).fontWeight(.semibold).foregroundColor(AppThemeValues.medalCountTextColor)

            NavigationLink {
                AchievementsView()
            } label: {
                HStack {
                    Text("Achievements")
                    Image(systemName: "arrow.right")
                }
            }
            .buttonStyle(CustomButtonStyle())

        }
        .navigationBarBackButtonHidden(true)
        .padding(.horizontal, 24)
    }
}

#Preview {
    NavigationStack { HomeView() }
}
