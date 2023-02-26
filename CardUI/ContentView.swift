/* ContentView.swift --> CardUI. Created by Miguel Torres on 26/02/23. */

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.0, green: 9/255, blue: 44/255, opacity: 0.95) // El último parámetro es opcional.
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    VStack {
                        Image(systemName: "trophy.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(Color(red: 238/255, green: 238/255, blue: 238/255), Color(red: 1.0, green: 95/255, blue: 0.0))
                        Image(systemName: "bonjour")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(Color(red: 238/255, green: 238/255, blue: 238/255), Color(red: 1.0, green: 95/255, blue: 0.0), .gray)
                        Image(systemName: "infinity.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(Color(red: 238/255, green: 238/255, blue: 238/255), Color(red: 1.0, green: 95/255, blue: 0.0))
                    }

                    Image("Miguel Torres")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .clipShape(Circle()) // Hace redonda la imagen
                        .overlay(Circle().stroke(Color.black, lineWidth: 4.0))
                    
                    VStack {
                        Image(systemName: "bolt.heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(Color(red: 1.0, green: 95/255, blue: 0.0), Color(red: 238/255, green: 238/255, blue: 238/255))
                        Image(systemName: "01.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(Color(red: 1.0, green: 95/255, blue: 0.0), Color(red: 238/255, green: 238/255, blue: 238/255))
                        Image(systemName: "atom")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(Color(red: 1.0, green: 95/255, blue: 0.0), Color(red: 238/255, green: 238/255, blue: 238/255))
                    }
                }
                Text("Miguel Torres")
                    .font(.custom("Pacifico-Regular", size: 20.0))
                    .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                Text("iOS Developer")
                    .font(.system(size: 25.0)) // Elegimos directamente el tamaño de la fuente.
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 1.0, green: 95/255, blue: 0.0))
                
                Divider()
                
                // Aquí reutilizamos el componente "RoundedRectangle" automáticamente, creando una subview.
                InfoView(symbolName: "phone.circle.fill", textLabel: "+52 5618553878")
                InfoView(symbolName: "envelope.circle.fill", textLabel: "mrpicudo.dev@gmail.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
