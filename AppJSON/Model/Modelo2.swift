//
//  Modelo2.swift
//  AppJSON
//
//  Created by Mariano Battaglia on 12/03/2022.
//

import Foundation

struct Modelo2 : Decodable {
    let data : [UserList]
}

// Para utilizar en DetalleViewModel
struct User : Decodable{
    var data : UserList
}

struct UserList : Decodable {
    var id : Int
    var first_name : String
    var email : String
    var avatar : String
}
