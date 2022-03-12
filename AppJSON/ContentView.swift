//
//  ContentView.swift
//  AppJSON
//
//  Created by Mariano Battaglia on 10/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var login : PostViewModel
    
    var body: some View {
        Group{
            if login.authenticated == 0 {
                Login()
            }else if login.authenticated == 1 {
                Home()
            }else if login.authenticated == 2 {
                VStack{
                    Text("Usuario y/o contraseña incorrectos")
                    Button(action:{
                        login.authenticated = 0
                    }){
                        Text("Regresar")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
