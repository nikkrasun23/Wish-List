//
//  NewWishViewController.swift
//  Wish List (Lesson 95)
//
//  Created by Nik Krasun on 25.08.2024.
//

import UIKit

class NewWishViewController: UIViewController {

     
    
    @IBOutlet private weak var wishTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction private func savePressed(_ sender: Any) {
        guard let name = wishTextField.text, !name.isEmpty else { return }
        let newWish = Wish(name: name, descriptipn: nil)
        DataManager.instance.addWish(newWish)
        navigationController?.popToRootViewController(animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
