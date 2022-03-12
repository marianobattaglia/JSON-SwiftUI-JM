//
//  DetalleView.swift
//  AppJSON
//
//  Created by Mariano Battaglia on 12/03/2022.
//

import SwiftUI

struct DetalleView: View {
    
    var id : Int
    @StateObject var user = DetalleViewModel()
    
    var body: some View {
        VStack {
            if user.avatar.isEmpty{
                ProgressView()
            } else {
                Image(systemName: "person.fill")
                    .data(url: URL(string: user.avatar)!) // Toma extension de Home2 (no se hace de nuevo)
                    .frame(width: 80, height: 80)
                    .clipped()
                    .clipShape(Circle())
                Text(user.first_name).font(.largeTitle)
                Text(user.email).font(.title)
            }
        }.onAppear{ //llamo al id del user
            user.fetch(id: id)
        }
    }
}
