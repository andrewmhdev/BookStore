//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Andrew H on 5/12/22.
//

import UIKit

class BookDetailViewController: UIViewController {
//MARK: Outlets
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var bookPhotoImage: UIImageView!
    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookRatingTextField: UITextField!
    @IBOutlet weak var bookSynopsisTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews(book: bookReciever)

    }
    //MARK: Properties
    var bookReciever: Book?
    //MARK: helper func
    func updateViews(book: Book?) {
        guard let book = bookReciever else {return}
        bookTitleTextField.text = book.title
        bookAuthorTextField.text = book.author
        bookRatingTextField.text = "\(book.rating)"
        bookSynopsisTextView.text = book.synopsis
    }
    
    func resetView() {
        bookTitleTextField.text = ""
        bookAuthorTextField.text = ""
        bookRatingTextField.text = ""
        bookSynopsisTextView.text = ""
    }
    //MARK: ACtions
    @IBAction func clearButtonTapped(_ sender: Any) {
        resetView()
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = bookTitleTextField.text,
              let author = bookAuthorTextField.text,
              let rating = bookRatingTextField.text,
              let synopsis = bookSynopsisTextView.text else {return}
        
        if let bookEntry = bookReciever {
            BookController.sharedInstance.update(bookEntryToUpdate: bookEntry, title: title, author: author, rating: Double(rating) ?? 0, synopsis: synopsis)
        } else {
            BookController.sharedInstance.createBook(author: author, title: title, rating: Double(rating) ?? 0, synopsis: synopsis)
        }
     navigationController?.popViewController(animated: true)
    }
    
}
