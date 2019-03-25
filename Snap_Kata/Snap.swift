class Snap {
  
  let deck = Deck()
  var gameCards: [String] = [String]()
  var gameStatus: GameStatusOutputter?
  
  required init(gameOutput: GameStatusOutputter) {
    self.gameStatus = gameOutput
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
