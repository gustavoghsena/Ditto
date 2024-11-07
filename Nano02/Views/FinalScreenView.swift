//
//  FinalScreenView.swift
//  Nano02
//
//  Created by Gustavo Sena on 03/08/23.
//

import SwiftUI



struct FinalScreenView: View {
    
    @Binding var score: Int
    @Binding var gameStarted: Bool
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 0) { // Use spacing: 0 to remove any additional spacing between items
                Image("bgscreen")
                    .resizable()
                  
            }

            VStack{
                
                Spacer()
                
                Text("Você acertou")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
      
                
                Text("\(score)")
                    .foregroundColor(Color("VerdeLimao"))
                    .font(Font.system(size: 200))
                    .fontWeight(.black)
                    
                
                Text("frases!")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                Spacer()
                
                Button("Voltar para o início", action: { withAnimation {
                    gameStarted = false
                } })
                .buttonStyle(NextButtonStyle())
                .frame(maxWidth: 250)
                .padding(.bottom, 64)
                
            }
        }
        .ignoresSafeArea()
        
    
        .background(Color("RoxoBG"))
       
    }
}

struct FinalScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FinalScreenView(score: .constant(0), gameStarted: .constant(true))
    }
}
