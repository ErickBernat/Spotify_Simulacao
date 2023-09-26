//
//  MusicaTela.swift
//  Music
//
//  Created by Student03 on 15/09/23.
//

import SwiftUI

struct MusicaTela: View {
    
     var auxiliar : Musicas
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Text(auxiliar.nome).foregroundColor(.black).font(.title)
                    .bold()
                
                AsyncImage(url: URL(string: auxiliar.capa)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 250, height: 250)
                
                Spacer()
                
                   
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 30, height: 30)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 45, height: 45)
                    Spacer()
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 50, height: 50)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 45, height: 45)
                    Spacer()
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
            }
        }.background(LinearGradient(colors: [Color.red, Color.black], startPoint: .top, endPoint: .bottom)
            .frame(width: 500, height: 900)
            .ignoresSafeArea(.all))
        
    }
    
    
}


struct MusicaTela_Previews: PreviewProvider {
    static var previews: some View {
        MusicaTela(auxiliar: Musicas(id: "1", nome: "musica", artista: "cantos", capa: ""))
    }
}
