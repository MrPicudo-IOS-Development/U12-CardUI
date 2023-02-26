/* InfoView.swift --> CardUI. Created by Miguel Torres on 26/02/23. */

import SwiftUI

/* Copiamos y pegamos la estructura que se creó automáticamente al hacer la Subview */
struct InfoView: View {
    // Variables que agregamos para que la estructura pueda adaptarse al objeto creado y ser reutilizada.
    let symbolName: String
    let textLabel: String
    // Código que teníamos originalmente.
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.init(red: 238/255, green: 238/255, blue: 238/255))
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: symbolName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50.0, height: 50.0)
                    .foregroundStyle(Color(red: 1.0, green: 95/255, blue: 0.0), .white)
                Text(textLabel)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .frame(width: 270, height: 50.0)
            })
            .padding([.leading, .bottom, .trailing], 25.0)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(symbolName: "phone.circle.fill", textLabel: "+52 5618553878")
            .previewLayout(.sizeThatFits)
    }
}
