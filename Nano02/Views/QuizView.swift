//
//  QuizView.swift
//  Nano02
//
//  Created by Gustavo Sena on 01/08/23.
//

import SwiftUI

struct QuizView: View {
    @State var corBG = "RoxoBG"
    @State var data: [Pergunta] = Pergunta.mock
    @Binding var score: Int
    @State var answeredQuestions = 0.0
    @Binding var gameEnded: Bool
    let totalQuestions = Double(Pergunta.mock.count)

    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment: .center) {
                
                Spacer()
                Text("Fim de jogo!")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                
                Button("Ver resultados", action: { withAnimation {
                gameEnded = true
                } })
                    .buttonStyle(NextButtonStyle())
                    .frame(maxWidth: 200)
                Spacer()
            }
            
            VStack(alignment: .center){
                
                
                Image("ditto250px")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 100)
                    
                Spacer()
                    .frame(maxHeight: 56)
                
                CardStack(
                    direction: LeftRight.direction,
                    data: data,
                    onSwipe: { card, direction in
                        print("Swiped \(card.title) to \(direction)");
                        answeredQuestions += 1
                        if direction == card.correctDirection {
                            score += 1
                            withAnimation(.easeInOut(duration: 0.3)) {
                                corBG = "VerdeAcertou"
                            }
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                withAnimation(.easeInOut(duration: 0.3)) {
                                    corBG = "RoxoBG"
                                }
                            }
                        } else {
                            print("Errou")
                            withAnimation(.easeInOut(duration: 0.3)) {
                                corBG = "VermelhoErrou"
                            }
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                withAnimation(.easeInOut(duration: 0.3)) {
                                    corBG = "RoxoBG"
                                }
                            }
                        }
                        print(score)
                    },
                    content: { Pergunta, direction, _ in
                        CardModelWithOverlay(Pergunta: Pergunta, direction: direction)
                    }
                )
                .frame(maxWidth: .infinity, maxHeight: 550, alignment: .center) // Set a specific size for CardStack
              
                Spacer()
            }
            .padding()
            
            VStack{
                Spacer()
                ProgressView(value: answeredQuestions/totalQuestions)
                    .tint(Color("VerdeLimao"))
                    .scaleEffect(x: 1, y: 10, anchor: .center)
            }
            
        }
        
//        .padding()
        .ignoresSafeArea(edges: .bottom)
        .navigationBarTitle("Thumbs", displayMode: .inline)
        .background(Color(corBG))
        
    }
    
}


struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(score: .constant(0), gameEnded: .constant(false))
    }
}
