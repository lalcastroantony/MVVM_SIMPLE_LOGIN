
import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeLbl: UILabel!
    private let homeViewModel = HomeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
        homeViewModel.getLoggedInUser()
        // Do any additional setup after loading the view.
    }
    
    func setupBinders() {
        homeViewModel.welcomeMessage.bind { [weak self] message in
            self?.welcomeLbl.text = message
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
