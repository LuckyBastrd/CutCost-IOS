//
//  RecipeModel.swift
//  KosKita
//
//  Created by Heical Chandra on 24/03/24.
//

import Foundation

struct RecipeModel: Identifiable, Codable {
    let id: Int
    let title: String
    let description: String
    let image: String
    let price: Int
    let time : String
    let ingredients: [String]
    let video: String
    let step: [String]
    let isBookmarked: Bool
    
    init(id: Int, title: String, description: String, image: String, price: Int, time: String, ingredients: [String], video: String, step: [String], isBookmarked: Bool){
        self.id = id
        self.title = title
        self.description = description
        self.image = image
        self.price = price
        self.time = time
        self.ingredients = ingredients
        self.video = video
        self.step = step
        self.isBookmarked = isBookmarked
    }
    
    func addBookmark() -> RecipeModel {
        return RecipeModel(id: id, title: title, description: description, image: image, price: price, time: time, ingredients: ingredients, video: video, step: step, isBookmarked: !isBookmarked)
    }
}
