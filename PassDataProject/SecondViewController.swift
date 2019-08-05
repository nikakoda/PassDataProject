//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Ника Перепелкина on 02/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindButton", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = login else {return}
        label.text = "Hello, \(login)!"
    }
}
