import XCTest
@testable import Snap_Kata

class Deck_Tests: XCTestCase {
  
  let deck = Deck()

  override func setUp() {
  }

  func testCreateDeck() {
    XCTAssertNotNil(deck)
  }
  
  func testClubCards() {
    let expectedDeck = ["🃑","🃒","🃓","🃔","🃕","🃖","🃗","🃘","🃙","🃚","🃛","🃝","🃞"]
    XCTAssertEqual(deck.clubCards(), expectedDeck)
  }
  
  func testDiamondsCards() {
    let expectedDeck = ["🃁","🃂","🃃","🃄","🃅","🃆","🃇","🃈","🃉","🃊","🃋","🃍","🃎"]
    XCTAssertEqual(deck.diamondsCards(), expectedDeck)
  }
  
  func testHeartsCards() {
    let expectedDeck = ["🂱","🂲","🂳","🂴","🂵","🂶","🂷","🂸","🂹","🂺","🂻","🂽","🃎"]
    XCTAssertEqual(deck.heartsCards(), expectedDeck)
  }
  
  func testSpadesCards() {
    let expectedDeck = ["🂡","🂢","🂣","🂤","🂥","🂦","🂧","🂨","🂩","🂪","🂫","🂭","🂮"]
    XCTAssertEqual(deck.spadesCards(), expectedDeck)
  }
  
  func testFullDeck() {
    XCTAssertEqual(deck.fullDeck().count, 52)
  }
  
}
