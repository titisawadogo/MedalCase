//
//  AchievementsViewModel.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import Combine
import Foundation

final class AchievementsViewModel: ObservableObject {
    @Published private(set) var sections: [AchievementSection] = []

    init() {
        //Static data loading
        self.sections = AchievementsDatabase.loadSections()
    }
    
    //Amount of personel records earned
    func earnedPersoRecordsLabel(for section: AchievementSection) -> String? {
        if section.id == "personal_records" {
            let persoRecordsEarned = section.achievements.filter { $0.isEarned }.count
            return "\(persoRecordsEarned) of \(section.achievements.count)"
        }
        return nil
    }
}
