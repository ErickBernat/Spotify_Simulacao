//
//  ContentView.swift
//  Music
//
//  Created by Student03 on 05/09/23.
//
import Foundation
import SwiftUI
struct Musicas : Identifiable{
    var id: String
    var nome:String
    var artista:String
    var capa:String
}
struct ContentView: View {
    
    
   @State var arrayMusicas = [
        Musicas(id: "1", nome: "I Wanna Be Yours", artista:"Artic Monkeys" , capa: "https://i.pinimg.com/236x/35/1b/e4/351be438ed3b972631877a3e84829513--arctic-monkeys-lp.jpg"),
        Musicas(id: "2", nome: "Bad Music For Bad People", artista:"The Cramps"
                , capa: "https://jpimg.com.br/uploads/2017/11/archives/2015/07/13/1379361228-10-capas-de-discos-de-rock-dignas-de-filmes-de-terror.jpg"),
        Musicas(id: "3", nome: "Highway to Hell", artista:"AC/DC"
                , capa: "https://4.bp.blogspot.com/-A5o2MU0PHlY/UicuvT7LIuI/AAAAAAAAAIg/cHm7l-D-3Ok/s1600/Highwaytohell.jpg"),
        Musicas(id: "4", nome: "Smells Likes Teen Spirit ", artista:"Nirvana"
                , capa: "https://i0.wp.com/therocklife.rocks/wp-content/uploads/2020/09/71vzjasx2kl._sl1400_.jpg?resize=1398%2C1400&ssl=1"),
        Musicas(id: "5", nome: "Fade To Black", artista:"Metalica"
                , capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8tXYMV5gumlX4vI5ooodtoLIIZYYv36vseg&usqp=CAU"),
        Musicas(id: "6", nome: "Rock And Roll All Nite", artista:"Kiss"
                , capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Yo5iWIoyaG3sXGpKPTcfQPacpDBH8HVF2w&usqp=CAU")
        
    ]
    
    
    @State var aux : Musicas = Musicas(id:"as", nome:"as", artista:"as", capa:"as")
    
    
    var body: some View {
        NavigationStack{
            ScrollView() {
                VStack{
                    Image("Rock")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200, height: 200)
                        
                    Text("ROCK")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .padding(10)
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center )
                    HStack{
                        Image("Rock")
                            .resizable()
                            .scaledToFit()
                            .frame(width:30, height: 30)
                            .italic()
                        Text("musicas")
                            .foregroundColor(Color.white)
                    }.padding(10)
                        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading )
                        .italic()
                    VStack{
                        ScrollView{
                            ForEach(arrayMusicas) { m in
                                NavigationLink(destination: MusicaTela (auxiliar: m) ){
                                    HStack{
                                        AsyncImage(url: URL(string: m.capa)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 60, height: 60)
                                        .padding(2)
                                        VStack{
                                            Text(m.artista)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading )
                                            Text(m.nome)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading )
                                            
                                        }
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(Color.white)
                                            .padding(10)
                                    }
                                }
                            }
                        }
                    }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading )
                    
                    Text("Sugeridos")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(10)
                        .italic()
                        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading )
                    
                    
                    ScrollView(.horizontal ) {
                        HStack(spacing: 20) {
                            ForEach(arrayMusicas){ musica in
                                
                                    VStack{
                                        
                                        AsyncImage(url: URL(string: musica.capa)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 200, height: 200)
                                        HStack{
                                            Text(musica.id)
                                                .foregroundColor(Color.white)
                                            Text(musica.nome)
                                                .foregroundColor(Color.white)
                                        }
                                    }
                                
                            }
                        }
                    }
                    
                }
                
            }.background(LinearGradient(colors: [Color.red, Color.black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
