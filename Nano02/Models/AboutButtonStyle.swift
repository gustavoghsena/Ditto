import Foundation
import SwiftUI


struct AboutButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .fontWeight(.bold)
            .background(configuration.isPressed ? Color("RoxoShadow").opacity(0.8) : Color("RoxoShadow"))
            .cornerRadius(32)
        
    }
}
