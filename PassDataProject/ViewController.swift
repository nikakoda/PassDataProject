//
//  ViewController.swift
//  PassDataProject
//
//  Created by Ника Перепелкина on 02/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var LoginTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var returnLabel: UILabel!
   
    @IBAction func sendPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "detailShow", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = LoginTextField.text
    }
    
    
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindButton" else {return}
        guard let svc = segue.source as? SecondViewController else {return}
        self.returnLabel.text = svc.label.text
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


