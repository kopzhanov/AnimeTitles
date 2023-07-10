//
//  Anime.swift
//  AnimeTitles
//
//  Created by Alikhan Kopzhanov on 10.07.2023.
//

import Foundation
import SwiftyJSON

struct AnimeTitle{
    var title = ""
    var englishTitle = ""
    var episodes = 0
    var score = 0.0
    var genres = ""
    var picture = ""
    
    init(json:JSON) {
        if let item = json["title"].string {
            title = item
        }
        if let item = json["englishTitle"].string {
            englishTitle = item
        }
        if let item = json["episodes"].int {
            episodes = item
        }
        if let item = json["score"].double {
            score = item
        }
        if let item = json["genres"].string {
            genres = item
        }
        if let item = json["picture"].string {
            picture = item
        }
    }
}
