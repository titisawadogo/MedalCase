//
//  AchievementsDatabase.swift
//  MedalCase
//
//  Created by Tindwende Thierry Sawadogo on 7/14/26.
//

import Foundation

//Static data
enum AchievementsDatabase {
    static func loadSections() -> [AchievementSection] {
        [
            AchievementSection(
                id: "personal_records",
                title: "Personal Records",
                achievements: [
                    Achievement(id: "longest_run", title: "Longest Run", subtitle: "38:55",
                                imageName: "longest_run", isEarned: true),
                    Achievement(id: "highest_elevation", title: "Highest Elevation", subtitle: "2095 ft",
                                imageName: "highest_elevation", isEarned: true),
                    Achievement(id: "fastest_5k", title: "Fastest 5K", subtitle: "21:55",
                                imageName: "fastest_5k", isEarned: true),
                    Achievement(id: "fastest_10k", title: "10K", subtitle: "01:15:74",
                                imageName: "fastest_10k", isEarned: true),
                    Achievement(id: "fastest_half_marathon", title: "Half Marathon", subtitle: "32:30",
                                imageName: "fastest_half_marathon", isEarned: true),
                    Achievement(id: "fastest_marathon", title: "Marathon", subtitle: "Not Yet",
                                imageName: "fastest_marathon", isEarned: false)
                ]
            ),
            AchievementSection(
                id: "virtual_races",
                title: "Virtual Races",
                achievements: [
                    Achievement(id: "virtual_half_marathon_race", title: "Virtual Half Marathon Race", subtitle: "26:54",
                                imageName: "virtual_half_marathon_race", isEarned: true),
                    Achievement(id: "tokyo_hakone_ekiden_2020", title: "Tokyo-Hakone Ekiden 2020", subtitle: "01:50:40",
                                imageName: "tokyo-hakone-ekiden-2020", isEarned: true),
                    Achievement(id: "virtual_10k_race", title: "Virtual 10K Race", subtitle: "02:43:21",
                                imageName: "virtual_10k_race", isEarned: true),
                    Achievement(id: "hakone_ekiden", title: "Hakone Ekiden", subtitle: "01:33:01",
                                imageName: "hakone_ekiden", isEarned: true),
                    Achievement(id: "mizuno_singapore_ekiden", title: "Mizuno Singapore Ekiden 2015", subtitle: "01:10:28",
                                imageName: "mizuno_singapore_ekiden", isEarned: true),
                    Achievement(id: "virtual_5k_race", title: "Virtual 5K Race", subtitle: "23:07",
                                imageName: "virtual_5k_race", isEarned: true)
                ]
            )
        ]
    }
}
