//
//  StartScreenView.swift
//  Nano02
//
//  Created by Gustavo Sena on 03/08/23.
//

import SwiftUI

struct StartScreenView: View {
    
    @Binding var gameStarted: Bool
    @Binding var showInfoPage: Bool
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            VStack(spacing: 0){
                Image("bgscreen")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
              
            }

            

            VStack(alignment: .center){
                
                Spacer(minLength: 120)
                
                Image("ditto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                
                
                Spacer(minLength: 340)
                
                Button("Começar", action: { withAnimation {
                    gameStarted = true
                } })
                .buttonStyle(NextButtonStyle())
                .frame(maxWidth: 250)


                
                Button("Sobre", action: { withAnimation {
                    showInfoPage = true
                } })
                .buttonStyle(AboutButtonStyle())
                .frame(maxWidth: 250)
                .padding()
                
                Spacer()
               
            }
        }
        .ignoresSafeArea()
        
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView(gameStarted: .constant(false), showInfoPage: .constant(false))
    }
}
