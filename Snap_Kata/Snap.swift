class Snap {
  
  let deck = Deck()
  var gameCards: [String] = [String]()
  var gameStatus: GameStatusOutputter?
  
  required init(gameOutput: GameStatusOutputter) {
    self.gameStatus = gameOutput
    self.gameCards = shuffledCards()
  }
  
  func startGame() {
    gameStatus?.printStatus("Player 1 draws " + dealCard())
    gameStatus?.printStatus("Player 2 draws")
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
