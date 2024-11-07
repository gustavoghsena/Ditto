//
//  PerguntaModel.swift
//  Nano02
//
//  Created by Gustavo Sena on 01/08/23.
//

import Foundation
import SwiftUI

struct Pergunta: Identifiable {
  let id = UUID()
  let title: String
  let content: String
  let optionOne: String
  let optionTwo: String
  let correctDirection: LeftRight
  let image: UIImage

  static let mock: [Pergunta] = [
    Pergunta(title: "Quem disse?", content: "É difícil continuar lutando quando a luta não é justa.", optionOne: "Taylor Swift", optionTwo: "Donald Trump", correctDirection: .left, image: UIImage(named: "1")!),
    Pergunta(title: "Quem disse?", content: "Se você está passando pelo inferno, continue.", optionOne: "Winston Churchill", optionTwo: "GKAY", correctDirection: .left, image: UIImage(named: "2")!),
    Pergunta(title: "Quem disse?", content: "O que não nos mata nos torna mais forte.", optionOne: " Friedrich Nietzsche", optionTwo: "Demi Lovato", correctDirection: .left, image: UIImage(named: "3")!),
    Pergunta(title: "Quem disse?", content: "Não sou especificamente talentoso em nada, exceto na capacidade de aprender.", optionOne: "Albert Einstein", optionTwo: "Kanye West", correctDirection: .right, image: UIImage(named: "4")!),
    Pergunta(title: "Quem disse?", content: "Às vezes fico emocionado com fontes.", optionOne: "Kanye West", optionTwo: "Johannes Gutenberg", correctDirection: .left, image: UIImage(named: "5")!),
    Pergunta(title: "Quem disse?", content: "Se você realmente olhar de perto, a maioria dos sucessos da noite para o dia levaram muito tempo.", optionOne: "Primo Rico", optionTwo: "Steve Jobs", correctDirection: .right, image: UIImage(named: "6")!),
    Pergunta(title: "Quem disse?", content: "Toda vez que você se deparar com algo feio, concentre-se em algo bonito.", optionOne: "Ariana Grande", optionTwo: "J. J. Rousseau", correctDirection: .left, image: UIImage(named: "7")!),
    Pergunta(title: "Quem disse?", content: "Jovens pensadores serão a força do amanhã.", optionOne: "Larissa Manoela", optionTwo: "Bill Gates", correctDirection: .left, image: UIImage(named: "8")!),
    Pergunta(title: "Quem disse?", content: "Fomos socializados para acreditar que a pobreza é um fracasso pessoal, e não dos sistemas.", optionOne: "Mariah Carey", optionTwo: "Vladimir Lenin", correctDirection: .left, image: UIImage(named: "9")!),
    Pergunta(title: "Quem disse?", content: "Todo mundo vai ficar famoso por 15 minutos.", optionOne: "Andy Warhol", optionTwo: "Felipe Neto", correctDirection: .left, image: UIImage(named: "10")!)
    
  ]
}
