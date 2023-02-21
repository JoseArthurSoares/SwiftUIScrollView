//
//  CardView.swift
//  SwiftUIScrollView
//
//  Created by Arthur Soares on 21/02/23.
//

import SwiftUI

struct CardView: View {
    var imagem: Image
    var titulo: String
    var descricao: String
    var autor: String
    
    var body: some View {
        VStack(alignment: .leading){
            imagem
                .resizable()
                .scaledToFit()
            Text(titulo)
                .font(.headline)
                .foregroundColor(.secondary)
                .padding([.leading, .top])
            Text(descricao)
                .font(.title)
                .fontWeight(.black)
                .lineLimit(3)
                .padding(.leading)
            Text(autor)
                .font(.caption)
                .foregroundColor(.secondary)
                .padding([.leading, .bottom])
        }
        .cornerRadius(10)
        .padding(.vertical)
        .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
        opacity: 0.1), lineWidth: 1)
                )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imagem: Image("flutter-app"), titulo: "Flutter", descricao: "Bulding a Complex Layout with Flutter", autor: "Arthur")
    }
}
