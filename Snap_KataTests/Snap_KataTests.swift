import XCTest
@testable import Snap_Kata

class Snap_KataTests: XCTestCase {
    
  var snap : Snap?
  
  override func setUp() {
    snap = Snap()
  }

  func testCreateSnapGame() {
    XCTAssertNotNil(snap)
  }
  
  func testShuffledBoard() {
    let shuffledCards = snap?.shuffledCards()
    let shuffledCards2 = snap?.shuffledCards()
    XCTAssertNotEqual(shuffledCards, shuffledCards2)
  }

}
