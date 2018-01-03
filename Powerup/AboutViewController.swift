import UIKit

class AboutViewController: UIViewController {
    
    // MARK: Action
    @IBAction func homeButtonTouched(_ sender: UIButton) {
        // Showing about section of app.
        dismiss(animated: true, completion: nil)
    }
}
