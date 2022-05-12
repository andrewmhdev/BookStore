//
//  Book.swift
//  BookStore
//
//  Created by Andrew H on 5/12/22.
//

import Foundation


class Book {
    var author: String
    var title: String
    var lastUpdated: Date
    var rating: Double
    var synopsis: String
    
    init(author: String, title: String, lastUpdated: Date = Date(), rating: Double, synopsis: String) {
        self.author = author
        self.title = title
        self.lastUpdated = lastUpdated
        self.rating = rating
        self.synopsis = synopsis
    }
}
