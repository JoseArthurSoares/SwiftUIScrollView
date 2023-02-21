//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Arthur Soares on 21/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Sua Lista de leitura")
                .font(.title)
                .fontWeight(.black)
            ScrollView{
                VStack {
                    CardView(imagem: Image("swiftui-button"), titulo: "SwiftUI", descricao: "Drawing a Border with Rounded Corners", autor: "Simon Ng")
                    CardView(imagem: Image("macos-programming"), titulo: "macOS", descricao: "Building a simple Editing App", autor: "Gabriel Theodoropoulos")
                    CardView(imagem: Image("flutter-app"), titulo: "Flutter", descricao: "Building a Complex Layout with Flutter", autor: "Lawrence Tan")
                    CardView(imagem: Image("natural-language-api"), titulo: "iOS", descricao: "What's Newin Natural Language API", autor: "Sai Kambampati")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
