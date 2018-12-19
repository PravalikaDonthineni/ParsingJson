//
//  File.swift
//  ParsingJson
//
//  Created by Pravalika Donthineni on 12/13/18.
//  Copyright © 2018 Pravalika Donthineni. All rights reserved.
//

import Foundation

struct Object : Codable {
    var Car : CarObjectSummary
    var Computer : ComputerObjectSummary
    var Cat : AnimalObjectSummary
    var Dog : AnimalObjectSummary
    enum CodingKeys : String, CodingKey{
        case Car = "car"
        case Computer = "computer"
        case Cat = "cat"
        case Dog = "dog"
    }
}

struct CarObjectSummary : Codable {
    var objectSummary : ObjectDetails
    var doors : String
    var price : String
    var milage : String
    
    enum CodingKeys : String, CodingKey {
        case  objectSummary = "object_summary"
        case  doors = "doors"
        case price = "price"
        case milage = "milage"
    }
}

struct Image : Codable {
    var url : String
    var width : String
    var height : String
    
    enum CodingKeys : String, CodingKey {
        case  url = "url"
        case width = "width"
        case height = "height"
    }
}

struct ComputerObjectSummary : Codable {
    var objectSummary : ObjectDetails
    var purchaseDate :String
    var image : Image
    
    enum CodingKeys : String, CodingKey {
        case  objectSummary = "object_summary"
        case  purchaseDate = "purchase_date"
        case  image = "image"
    }
}

struct AnimalObjectSummary : Codable {
    var objectSummary : ObjectDetails
    var age : String
    var favoriteToy : String
    var image : Image
    
    enum CodingKeys : String, CodingKey {
        case  objectSummary = "object_summary"
        case  age = "age"
        case  favoriteToy = "favorite_toy"
        case  image = "image"
    }
}

struct ObjectDetails : Codable {
    var type : String
    var name : String
    var color : String
    var description : String
    
    enum CodingKeys : String, CodingKey {
        case type = "type"
        case name = "name"
        case color = "color"
        case description = "description"
    }
}
