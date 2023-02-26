/* ContentView.swift --> CardUI. Created by Miguel Torres on 26/02/23. */

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Fondo") // Si se usa el objeto Color, se usa directamente el Color Set que creamos.
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    VStack {
                        Image(systemName: "trophy.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(CustomColor.hueso, CustomColor.naranja)
                        Image(systemName: "bonjour")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(CustomColor.hueso, CustomColor.naranja)
                        Image(systemName: "infinity.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(CustomColor.hueso, CustomColor.naranja)
                    }

                    Image("Miguel Torres")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .clipShape(Circle()) // Hace redonda la imagen
                        .overlay(Circle().stroke(CustomColor.texto, lineWidth: 4.0))
                    
                    VStack {
                        Image(systemName: "bolt.heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(CustomColor.hueso, CustomColor.naranja)
                        Image(systemName: "01.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(CustomColor.hueso, CustomColor.naranja)
                        Image(systemName: "atom")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                            .foregroundStyle(CustomColor.hueso, CustomColor.naranja)
                    }
                }
                Text("Miguel Torres")
                    .font(.custom("Pacifico-Regular", size: 20.0))
                    .foregroundColor(CustomColor.hueso)
                Text("iOS Developer")
                    .font(.system(size: 25.0)) // Elegimos directamente el tamaño de la fuente.
                    .fontWeight(.bold)
                    .foregroundColor(CustomColor.naranja)
                
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

// Estructura para identificar adecuadamente los colores personalizados con opción de dark mode.
struct CustomColor {
    // Usamos "static" para que el color pueda ser utilizado desde la estructura y no desde un objeto.
    static let hueso = Color("Hueso")
    static let texto = Color("Texto")
    static let white = Color("White")
    static let fondo = Color("Fondo")
    static let naranja = Color("Naranja")
}
