//
//  BookListTableViewController.swift
//  BookStore
//
//  Created by Andrew H on 5/12/22.
//

import UIKit

class BookListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return BookController.sharedInstance.books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as? BookTableViewCell else {return
            UITableViewCell()}
        let bookEntry = BookController.sharedInstance.books[indexPath.row]
        
        cell.updateViews(book: bookEntry)

        // Configure the cell...

        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let deleteBook = BookController.sharedInstance.books[indexPath.row]
            BookController.sharedInstance.delete(bookEntryToDelete: deleteBook)
        tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }    
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        //MARK: IIDOO
        
        // identifer
        if segue.identifier == "toDetailVC" {
            
            if let index = tableView.indexPathForSelectedRow {
                // Destination
                if let destination = segue.destination as? BookDetailViewController {
                    
                    //object to send
                    let bookEntry = BookController.sharedInstance.books[index.row]
                    
                    // object to recieve
                    destination.bookReciever = bookEntry
                    
                }
                
            }
            
        }
            
        
        
    }


}
