class Snap {
  
  let deck = Deck()
  
  required init() {
  }
  
  func shuffledCards() -> [String] {
    return deck.fullDeck().shuffled()
  }
  
}
