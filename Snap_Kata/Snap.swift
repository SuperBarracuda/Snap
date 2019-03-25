class Snap {
  
  let deck = Deck()
  var gameCards: [String] = [String]()
  var gameStatus: GameStatusOutputter?
  
  public var gameEngine: GameEngine?
  
  required init(gameOutput: GameStatusOutputter) {
    self.gameStatus = gameOutput
    self.gameEngine = GameEngine()
    self.gameCards = shuffledCards()
  }
  
  func startGame() {
    let dealtCard = dealCard()
    gameEngine?.player1Cards?.append(dealtCard)
    gameStatus?.printStatus("Player 1 draws " + dealtCard)
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
