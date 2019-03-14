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
  
}
