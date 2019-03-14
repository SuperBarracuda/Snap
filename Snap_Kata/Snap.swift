class Snap {
  
  let deck = Deck()
  var gameCards: [String]?
  
  required init() {
    self.gameCards = [String]()
  }
  
  func startGame() {
    self.gameCards = shuffledCards()
  }
  
  func shuffledCards() -> [String] {
    return deck.fullDeck().shuffled()
  }
  
}
