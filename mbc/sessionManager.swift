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
    
    private init(){}
    
    
    func logOut(){
        loggedIn = false
    }
    
    func auth(name: String, pw: String) -> Bool{
        if (name == "hola" && pw == "1234"){
            loggedIn = true
            return true
        }
        return false
    }

}
