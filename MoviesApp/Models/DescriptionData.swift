//
//  DescriptionData.swift
//  MoviesApp
//
//  Created by Эл on 09.02.2023.
//

import Foundation

struct DescriptionResponses: Decodable {
    let responses: [DescriptionData]
}

struct DescriptionData: Decodable {
    let title: String?
    let overview: String?
    let poster_path: String?
    
    var posterPath: String? {
        return poster_path
    }
}
