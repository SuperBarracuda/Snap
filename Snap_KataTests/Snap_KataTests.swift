import XCTest
@testable import Snap_Kata

class Snap_KataTests: XCTestCase {
    
  var snap : Snap?
  
  override func setUp() {
    snap = Snap()
  }

  func testCreateSnapGame() {
    snap?.startGame()
    XCTAssertEqual(snap?.gameCards.count, 52)
  }
  
  func testShuffledBoard() {
    let shuffledCards = snap?.shuffledCards()
    let shuffledCards2 = snap?.shuffledCards()
    XCTAssertNotEqual(shuffledCards, shuffledCards2)
  }
  
  func testDealCards() {
    let fullDeck = Deck().fullDeck()
    snap?.startGame()

    let card = snap?.dealCard()
    XCTAssertTrue(fullDeck.contains(card!))
  }

}
