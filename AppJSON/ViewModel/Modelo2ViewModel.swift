//
//  Modelo2ViewModel.swift
//  AppJSON
//
//  Created by Mariano Battaglia on 12/03/2022.
//

import Foundation

class Modelo2ViewModel: ObservableObject {
    
    @Published var datosModelo = Modelo2(data: [])
    
    init(){
        fetch()
    }
    
    func fetch(){
        guard let url = URL(string: "https://reqres.in/api/users?page=2") else { return  }
        
        URLSession.shared.dataTask(with: url){data,_,_ in
            
            guard let data = data else { return }
            do{
                let json = try JSONDecoder().decode(Modelo2.self, from: data)
                DispatchQueue.main.async {
                    self.datosModelo = json
                }
            }catch let error as NSError{
                print("Error en el json", error.localizedDescription)
            }
            
        }.resume()
    }
}
