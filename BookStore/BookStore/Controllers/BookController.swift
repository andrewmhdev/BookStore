//
//  BookController.swift
//  BookStore
//
//  Created by Andrew H on 5/12/22.
//

import Foundation

class BookController {
    
    
    //MARK: SOT
    var books: [Book] = []
    //singleton
    static let sharedInstance = BookController()

    
    //MARK: CRUD
    func createBook(author: String, title: String, rating: Double, synopsis: String) {
        let bookEntry = Book(author: author, title: title, rating: rating, synopsis: synopsis)
        books.append(bookEntry)
    }
    func update(bookEntryToUpdate: Book, title: String, author: String, rating: Double, synopsis: String) {
        bookEntryToUpdate.title = title
        bookEntryToUpdate.author = author
        bookEntryToUpdate.rating = rating
        bookEntryToUpdate.synopsis = synopsis
    }
    func delete(bookEntryToDelete: Book) {
        guard let index = books.firstIndex(of: bookEntryToDelete) else {return}
        books.remove(at: index)
    }
}
