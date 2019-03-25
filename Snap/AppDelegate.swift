import Cocoa
import Snap_Kata

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    let outputter = GameStatusOutputter()
    let snap = Snap(gameOutput: outputter)
    snap.startGame()
  }

}

