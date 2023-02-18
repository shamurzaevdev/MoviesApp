//
//  Movie.swift
//  MoviesApp
//
//  Created by Эл on 02.02.2023.
//

/// Our Model to keep all data from web-server
import Foundation

struct TrendingMoviesResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let backdrop_path: String?
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    let overview: String?
    
    var backdropPath: String? {
        return backdrop_path
    }
    
    var posterPath: String? {
        return poster_path
    }
}
