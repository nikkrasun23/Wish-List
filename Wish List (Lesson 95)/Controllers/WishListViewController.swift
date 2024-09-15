//
//  WishListViewController.swift
//  Wish List (Lesson 95)
//
//  Created by Nik Krasun on 25.08.2024.
//

import UIKit

class WishListViewController: UIViewController {

    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
     
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }


}

extension WishListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.instance.newWishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewWishTableViewCell", for: indexPath) as! NewWishTableViewCell
        let wish = DataManager.instance.newWishes[indexPath.row]
        cell.update(name: wish.name)
        return cell
    }
}
