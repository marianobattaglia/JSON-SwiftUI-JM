//
//  AppJSONApp.swift
//  AppJSON
//
//  Created by Mariano Battaglia on 10/03/2022.
//

import SwiftUI

@main
struct AppJSONApp: App {
    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
