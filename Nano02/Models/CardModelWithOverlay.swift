//
//  CardModelWithOverlay.swift
//  Nano02
//
//  Created by Gustavo Sena on 01/08/23.
//

import SwiftUI

struct CardModelWithOverlay: View {
    @State var showImage = false
    let Pergunta: Pergunta
    let direction: LeftRight?
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .top) {
                Card(Pergunta: Pergunta)
                
//                Rectangle()
//                    .animation(.default, value: direction == .right)
//                    .opacity(direction == .right ? 1 : 0)
//                    .cornerRadius(8)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
         
        }

        
    }
}

