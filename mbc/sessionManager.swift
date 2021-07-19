//
//  sessionManager.swift
//  mbc
//
//  Created by Administrador on 7/16/21.
//

import Foundation


class sessionManager{
    
    static let shared = sessionManager()
    
    var loggedIn: Bool?
    var loggedUser: String?
    
    private init(){}
    
    func getName() -> String{
        return loggedUser ?? ""
    }
    func logOut(){
        loggedIn = false
        loggedUser = ""
        NotificationCenter.default.post(name: Notification.Name("logout"), object: nil)
    }
    
    func auth(name: String, pw: String) -> Bool{
        if (name == "hola" && pw == "1234"){
            loggedIn = true
            loggedUser = name
            return true
        }
        return false
    }

}
