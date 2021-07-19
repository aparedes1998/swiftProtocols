//
//  ViewController.swift
//  mbc
//
//  Created by Administrador on 7/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func login(_ sender: Any) {
        let result = sessionManager.shared.auth(name: "hola", pw: "1234")
        if (result){
            performSegue(withIdentifier: "segueToMainScreen", sender: nil)
        }
        else{
            // Do nothing
        }
    }
    
    
        
  
    // override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
    // switch segue.identifier
    // case "segue": segue.destination.title ="Show segue"
    // case "modal":
    //      guard let destination = segue.destination as? UINavigationController else {return}
    //      guard let viewCon = destination.viewControllers.first else {return} viewCon.title = "Modal segue"
    // default: return
    //}
    
    
}

