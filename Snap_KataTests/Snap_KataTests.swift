import XCTest
@testable import Snap_Kata


class FakeGameStatusOutputter : GameStatusOutputter {
  
  var gameStatues : [String] = [String]()
  
  override func printStatus(_ status: String) {
    gameStatues.append(status)
  }
  
}

class Snap_KataTests: XCTestCase {
  
  var snap : Snap?
  var fakeGameStatusOutputter : FakeGameStatusOutputter?
  
  override func setUp() {
    fakeGameStatusOutputter = FakeGameStatusOutputter()
    snap = Snap(gameOutput: fakeGameStatusOutputter!)
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
  
  func testCardsAreRemovedOnceDealt() {
    snap?.startGame()
    
    _ = snap?.dealCard()
    XCTAssertEqual(snap?.gameCards.count, 51)
    _ = snap?.dealCard()
    XCTAssertEqual(snap?.gameCards.count, 50)
  }
  
  func testNoMoreCardsAreDealtWhenDeckIsEmpty() {
    snap?.startGame()
    for _ in 1...52 {
      _ = snap?.dealCard()
    }
    XCTAssertEqual(snap?.dealCard(), "")
  }
  
  func testFirstPlayerStarts() {
    snap?.startGame()
    let gameStatus = fakeGameStatusOutputter?.gameStatues.first
    XCTAssertTrue((gameStatus?.contains("Player 1 draws"))!)
  }
  
  /*
   //Throw error when no more cards
   
   add mock for snap game printer
   
   print out who's playing next verify that that's called (i.e. capture result).
   
   //show emoji representing each player.
   
   add override to mock to avoid it adding time actual game has random thinking time.
   
   
   // Then hook up a simple mac app that says P v P
   shows the two cards if they match does a simple particle effect and shows the output that would be in the console in the app.
  
   */

}
