class Snap {
  
  let deck = Deck()
  var gameCards: [String] = [String]()
  
  required init() {
  }
  
  func startGame() {
    self.gameCards = shuffledCards()
  }
  
  func shuffledCards() -> [String] {
    return deck.fullDeck().shuffled()
  }
  
  func dealCard() -> String {
    if !gameCards.isEmpty {
      return gameCards.removeFirst()
    }
    return ""
  }
  
}
