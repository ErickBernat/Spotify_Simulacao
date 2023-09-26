//
//  Musica1.swift
//  Music
//
//  Created by Student03 on 05/09/23.
//

import SwiftUI

struct Musica1: View {
    @State var auxiliar : Musicas
    
    var body: some View {
        VStack{
            ScrollView(){
                
                VStack{
                    Image("Rock")
                        .resizable()
                        .scaledToFit()
                        .italic()
                }
                
            }
        }.background(LinearGradient(colors: [Color.red, Color.black], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea(.all))
    }
}

