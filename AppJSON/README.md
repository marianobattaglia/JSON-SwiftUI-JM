# README

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

## Topics

### <!--@START_MENU_TOKEN@-->Group<!--@END_MENU_TOKEN@-->

- <!--@START_MENU_TOKEN@-->``Symbol``<!--@END_MENU_TOKEN@-->

1) Creacion de archivo "PostModel.swift". Creacion de struct con un protocolo (codable, decodable o encodable). Decodable sirve para decodificar, toma JSON externo y transofrma a la estructura actual. Encodable hace lo inverso, convierte estructura actual en JSON. Codable realiza ambas cosas. En este caso se podria utilizar Codable o Decodable, pero utilizamos Decodable ya que es mas correcto. 
2) Genero dentro del PostModel.swift la estructura del JSON de la web "https://reqres.in/" del tipo POST (Register-Succesfull), esta estructura va a tomar el TOKEN que envia la API.
3) Genero el PostViewModel.swift en el cual genero una clase PostViewModel que contenga: 
    - Variable "authenticated" que tendra un valor bool el cual verifique el token. 
    - Una func "login" que tome el email y password del API. Dentro de la misma realizo un guardlet que guarde la URL de la API. Creo una variable let con los "parametros" de la API. Creo una variable let con el body donde enviamos los parametros = try! JSONserialization con nuestros parametros. Creo una variable var "request" igual a URLrequest y nuestra URL. Luego elijo el metodo de envio, en nuestro caso el http method. Luego realizo los request. Luego realizo la URLSessions.shared.dataTask (with: request) la cual pide 3 datos "data,response,error". dentro una funcion "if let response = response" que imprima "print(response)"
4) Creo una funcion init() que dentro tendra el login(email,pasword), los parametros utilizo los de las API
5) Para comprobar que hayamos hecho todo bien, en el ContentView.swift, creo una     @ObservedObject var login = PostViewModel()... si la consola imprime un "Status Code: 300" significa que esta ok
6) Dentro del URLSessions del PostViewMode.swift creo un do catch donde do tiene una variable "datos" que toma de data, y si este valor contiene un token va a realizar la siguiente funcion DispatchQueue.main.async { self.authenticated = 1 }. De lo contrario en catch, va a ser "2"
7) Traemos el PostViewModel a Login con EnvironmentObject (no con ObservedObject), Environment hace que la variable cambie en todas las vistas, por ese motivo usamos Environment. Para hacer esto:
    - En el ciclo de vida (AppJSONApp.swift) creamos una variable var login= PostViewModel() y al ContentView lo mado a environmentobject(login)
8) Doy estilo a la vista "Login" con SwiftUI
9) Una vez que funciona el login y toma la key que permite pasar a la ventana Home, voy a generar un UserDefaults que al cargar la key la guarde, dejando que las proximas veces que inicie ingrese automaticamente en Home. 
10) Luego creo un nuevo Model "Modelo1.swift" que tenga una struct de la API de usuarios
11) Creo el ViewModel "Modelo1ViewModel" que tome los datos de Modelo1 y llame la API "https://jsonplaceholder.typicode.com/users" 
12) Doy estilo a la vista "Home.swift" para que muestre una lista con los datos tomados de la API.
13) Creo el Modelo2.swift, Home2.swift, y Modelo2ViewModel tomando los datos desde la API https://reqres.in/api/users?page=2
14) Creo una extension para las imagenes en el Home2.swift para que tome el string desde el JSON
15) Creo una vista de detalle que tome el numero de id de la vista Home2, y me de un detalle de ese mismo numero id. Ademas creo el DetalleViewModel
16) Creo una struct User que tome valores de UserList en el "Modelo2". 
17) Para descargar los datos y mostrar la vista, creo variables en DetalleViewModel.swift, luego en el docatch, en do tomo los valores de User, y en el dispatch tomo las variables correspondientes

