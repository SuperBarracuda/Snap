public class GameEngine {
  
  var player1Cards : [String]?
  var player2Cards : [String]?
  
  init() {
    player1Cards = [String]()
    player2Cards = [String]()
  }
  
  func doCardsMatch(_ cardA: String?, _ cardB: String?) -> Bool? {
    return cardA == cardB
  }

}
