class Deck {
  
  func clubCards() -> [String] {
    return "🃑 🃒 🃓 🃔 🃕 🃖 🃗 🃘 🃙 🃚 🃛 🃝 🃞".components(separatedBy: " ")
  }
  
  func diamondsCards() -> [String] {
    return "🃁 🃂 🃃 🃄 🃅 🃆 🃇 🃈 🃉 🃊 🃋 🃍 🃎".components(separatedBy: " ")
  }
  
  func heartsCards() -> [String] {
    return "🂱 🂲 🂳 🂴 🂵 🂶 🂷 🂸 🂹 🂺 🂻 🂽 🃎".components(separatedBy: " ")
  }
  
  func spadesCards() -> [String] {
    return "🂡 🂢 🂣 🂤 🂥 🂦 🂧 🂨 🂩 🂪 🂫 🂭 🂮".components(separatedBy: " ")
  }
  
  func fullDeck() -> [String] {
    var fullset = [String]()
    fullset.append(contentsOf: clubCards())
    fullset.append(contentsOf: diamondsCards())
    fullset.append(contentsOf: heartsCards())
    fullset.append(contentsOf: spadesCards())
    return fullset
  }
  
}
