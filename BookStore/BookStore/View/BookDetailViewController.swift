//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Andrew H on 5/12/22.
//

import UIKit

class BookDetailViewController: UIViewController {

    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var bookPhotoImage: UIImageView!
    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookRatingTextField: UITextField!
    @IBOutlet weak var bookSynopsisTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
}
