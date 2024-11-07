import Foundation
import SwiftUI


struct NextButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(Color("RoxoBG"))
            .fontWeight(.bold)
            .background(configuration.isPressed ? Color("VerdeLimao").opacity(0.8) : Color("VerdeLimao"))
            .cornerRadius(32)
        
    }
}
