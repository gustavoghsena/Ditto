//
//  ViewSnippets.swift
//  Nano02
//
//  Created by Gustavo Sena on 01/08/23.
//

import SwiftUI

struct CustomDirection: View {
  enum MyDirection {
    case up, down

    static func direction(degrees: Double) -> Self? {
      switch degrees {
      case 315..<360, 0..<45: return .up
      case 135..<225: return .down
      default: return nil
      }
    }
  }

  @State var data: [Pergunta] = Pergunta.mock

  var body: some View {
    CardStack(
      direction: MyDirection.direction,
      data: data,
      onSwipe: { card, direction in
        print("Swiped \(card.title) to \(direction)")
      },
      content: { Pergunta, _, _ in
        Card(Pergunta: Pergunta)
      }
    )
    .padding()
    .scaledToFit()
    .frame(alignment: .center)
    .navigationBarTitle("Custom direction", displayMode: .inline)
  }
}

struct CustomConfiguration: View {
  @State var data: [Pergunta] = Pergunta.mock
    @Binding var score: Int

  var body: some View {
    CardStack(
      direction: LeftRight.direction,
      data: data,
      onSwipe: { card, direction in
          print("Swiped \(card.title) to \(direction)");
          print(score)
      },
      content: { Pergunta, _, _ in
        Card(Pergunta: Pergunta)
      }
    )
    .environment(
      \.cardStackConfiguration,
      CardStackConfiguration(
        maxVisibleCards: 3,
        swipeThreshold: 0.1,
        cardOffset: 40,
        cardScale: 0.2,
        animation: .linear
      )
    )
    .padding()
    .scaledToFit()
    .frame(alignment: .center)
    .navigationBarTitle("Custom configuration", displayMode: .inline)
  }
}

struct AddingCards: View {
  @State var data: [Pergunta] = Array(Pergunta.mock.prefix(2))

  var body: some View {
    CardStack(
      direction: LeftRight.direction,
      data: data,
      onSwipe: { _, _ in
        self.data.append(Pergunta.mock.randomElement()!)
      },
      content: { Pergunta, _, _ in
        Card(Pergunta: Pergunta)
      }
    )
    .padding()
    .scaledToFit()
    .frame(alignment: .center)
    .navigationBarTitle("Adding cards", displayMode: .inline)
  }
}

struct ReloadCards: View {
  @State var reloadToken = UUID()
  @State var data: [Pergunta] = Pergunta.mock.shuffled()

  var body: some View {
    CardStack(
      direction: LeftRight.direction,
      data: data,
      onSwipe: { card, direction in
        print("Swiped \(card.title) to \(direction)")
      },
      content: { Pergunta, _, _ in
        Card(Pergunta: Pergunta)
      }
    )
    .id(reloadToken)
    .padding()
    .scaledToFit()
    .frame(alignment: .center)
    .navigationBarTitle("Reload cards", displayMode: .inline)
    .navigationBarItems(
      trailing:
        Button(action: {
          self.reloadToken = UUID()
          self.data = Pergunta.mock.shuffled()
        }) {
          Text("Reload")
        }
    )
  }
}


struct ViewSnippets_Previews: PreviewProvider {
    static var previews: some View {
        CustomConfiguration(score: .constant(0))
    }
}
