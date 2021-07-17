//
//  loggedViewController.swift
//  mbc
//
//  Created by Administrador on 7/16/21.
//

import UIKit

class loggedViewController: UIViewController {

    
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        name.text = sessionManager.shared.getName()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logout(_ sender: Any) {
        sessionManager.shared.logOut()
    }
    
}
