import XCTest
@testable import Snap_Kata

class GameEngine_Tests: XCTestCase {
  
  var engine: GameEngine?
  
  override func setUp() {
    super.setUp()
    engine = GameEngine()
  }
  
  func testSomething() {
    XCTAssertNotNil(engine, "Should be able to create engine")
  }
  
  func testCardsMatch() {
    let card = Deck().fullDeck().first
    XCTAssertTrue((engine?.doCardsMatch(card, card))!)
  }
  
}
