//
//  AboutView.swift
//  Nano02
//
//  Created by Gustavo Sena on 05/08/23.
//

import SwiftUI

struct AboutView: View {
    
    @Binding var showInfo: Bool
    var body: some View {
        ZStack {
            
            VStack(spacing: 0) { // Use spacing: 0 to remove any additional spacing between items
                Image("bgscreen")
                    .resizable()
                  
            }
            .ignoresSafeArea()

            VStack{
            
                ScrollView {
                    Text("Desenvolvido por Gustavo Sena")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .bold()
                        .padding(.top, 48)
                        .padding()
                
                    
                    Text("Créditos e licenças de código-aberto: \n \nSwiftUI-CardStackView \nMIT License \nCopyright (c) 2020 Deniz Adalar \n \nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: \n \nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. \n \n All images, logos and brand names are the property of their respective owners. All of the images and names used in this application are for identification purposes only. Use of these names and images does not imply endorsement.")
                        .padding(32)
                        .font(.callout)

                    
                    Spacer()
                }
                .background(.white)
                .cornerRadius(32)
                .padding(42)
               
                Button("Voltar para o início", action: { withAnimation {
                    showInfo = false
                } })
                .buttonStyle(NextButtonStyle())
                .frame(maxWidth: 250)
                .padding(64)
               
            }
        }
        
        
    
        .background(Color("RoxoBG"))
       
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView(showInfo: .constant(true))
    }
}
