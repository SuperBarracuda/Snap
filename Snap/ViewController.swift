import Cocoa
import Snap_Kata

class macOSCardOutputter : GameStatusOutputter {
  
  var textview : NSTextView
  
  required init(textview : NSTextView) {
    self.textview = textview
  }
  
  override func printStatus(_ status: String) {
    textview.textStorage?.append(NSAttributedString(string: status + "\n"))
    textview.scrollToEndOfDocument(nil)
  }
  
}

class ViewController: NSViewController {
  
  @IBOutlet var gameStatusTextfield: NSTextView!
  var gameOutputter : macOSCardOutputter?
  var snapGame : Snap?

  override func viewDidLoad() {
    super.viewDidLoad()
    setupGame()
  }
  
  func setupGame() {
    gameOutputter = macOSCardOutputter(textview: gameStatusTextfield)
    snapGame = Snap(gameOutput: gameOutputter!)
    snapGame?.startGame()
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    gameStatusTextfield.font = NSFont.systemFont(ofSize: 48)
  }


}

