//
//  ContentView.swift


import SwiftUI

struct ContentView: View {
    
    @State var data: [Pergunta] = Pergunta.mock
    @State var score = 0
    @State var gameEnd = false
    @State var gameStart = false
    @State var showInfo = false
    
    var body: some View {
        
        ZStack{
            
            if gameStart == true && gameEnd == false {
                QuizView(score: $score, gameEnded: $gameEnd)
                    .transition(.opacity)
            } else if gameStart == false && showInfo == true {
                
                AboutView(showInfo: $showInfo)
                    .transition(.opacity)
            }
         else if gameStart == true && gameEnd == true {
                FinalScreenView(score: $score, gameStarted: $gameStart)
                    .transition(.opacity)
            } else {
                StartScreenView(gameStarted: $gameStart, showInfoPage: $showInfo)
                    .transition(.opacity)
            }
        }
        .preferredColorScheme(.light)
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
            
    }
}
