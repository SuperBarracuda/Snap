public class Snap {
  
  let deck = Deck()
  var gameCards: [String] = [String]()
  var gameStatus: GameStatusOutputter?
  
  public var gameEngine: GameEngine?
  
  public required init(gameOutput: GameStatusOutputter) {
    self.gameStatus = gameOutput
    self.gameEngine = GameEngine()
    self.gameCards = shuffledCards()
  }
  
  public func startGame() {
    player1Turn()
    player2Turn()
  }
  
  func player2Turn() {
    let dealtCard = dealCard()
    gameEngine?.player2Cards?.append(dealtCard)
    gameStatus?.printStatus("Player 2 draws " + dealtCard)
  }
  
  func player1Turn() {
    let dealtCard = dealCard()
    gameEngine?.player1Cards?.append(dealtCard)
    gameStatus?.printStatus("Player 1 draws " + dealtCard)
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
