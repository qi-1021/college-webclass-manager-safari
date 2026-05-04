import Cocoa
import SafariServices

let extensionBundleIdentifier = "__EXTENSION_BUNDLE_ID__"

class ViewController: NSViewController {
    
    override func viewDidAppear() {
        super.viewDidAppear()
        SFSafariApplication.showPreferencesForExtension(withIdentifier: extensionBundleIdentifier) { error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
            DispatchQueue.main.async {
                NSApplication.shared.terminate(nil)
            }
        }
    }
    
}
