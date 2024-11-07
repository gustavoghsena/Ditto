//
//  CardModel.swift
//  Nano02
//
//  Created by Gustavo Sena on 01/08/23.
//

import SwiftUI

struct Card: View {
  let Pergunta: Pergunta

  var body: some View {
    GeometryReader { geo in
        VStack {
            Image(uiImage: self.Pergunta.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: 350)
                .clipped()
            
            VStack (alignment: .center) {
                
                VStack(alignment: .center){
                    Spacer()
                    Text("\"\(self.Pergunta.content)\"")
                        .font(.title3)
                        .foregroundColor(Color("RoxoShadow"))
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(24)
                    Spacer()
                }
                Spacer()
                
                HStack {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("RoxoBG"))
                        .padding(.leading, 24)
                    Text(self.Pergunta.optionOne)
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RoxoBG"))

                    Spacer()
                    Text(self.Pergunta.optionTwo)
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RoxoBG"))
 
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color("RoxoBG"))
                        .padding(.trailing, 24)
                }
                .frame(maxWidth: .infinity, maxHeight: 56)
                .background(Color("VerdeLimao"))
                
                
                
            }
            
        }
      .background(Color.white)
      .cornerRadius(12)
      .shadow(color: Color("RoxoShadow"), radius: 8)
    }
  }
}
