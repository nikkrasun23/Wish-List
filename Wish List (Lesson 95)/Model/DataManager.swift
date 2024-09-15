//
//  DataManager.swift
//  Wish List (Lesson 95)
//
//  Created by Nik Krasun on 29.08.2024.
//

import Foundation
 
final class DataManager {
     
    
    static let instance = DataManager()
    private init() {
        generateMockWishes()
    }
    
    private(set) var newWishes: [Wish] = []
    
    private func generateMockWishes() {
        let swiftWish = Wish(name: "Learn Swift", descriptipn: "TableView, MVC")
        let wordsWish = Wish(name: "Learn 500 English words", descriptipn: nil)
        let visitWish = Wish(name: "Visit Paris", descriptipn: nil)
        newWishes = [swiftWish, wordsWish, visitWish]
    }
    
    func addWish(_ wish: Wish) {
        newWishes.append(wish)
    }
}
