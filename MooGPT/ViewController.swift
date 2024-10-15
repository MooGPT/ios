import UIKit
import ApiAI

class ViewController: UIViewController {

    @IBOutlet weak var queryInput: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var responseOutput: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup after loading the view
    }

    @IBAction func searchButtonTapped(_ sender: UIButton) {
        guard let userQuery = queryInput.text else { return }
        responseOutput.text = provideMockResponse(to: userQuery)
        queryInput.text = ""
    }

    private func provideMockResponse(to query: String) -> String {
        let lowercasedQuery = query.lowercased()
        if lowercasedQuery.contains("weather") {
            return "The weather is sunny with a slight chance of rain."
        } else if lowercasedQuery.contains("news") {
            return "Today's news includes a major breakthrough in renewable energy."
        } else if lowercasedQuery.contains("sports") {
            return "The local team won their championship game last night!"
        } else if lowercasedQuery.contains("love")
            return "I'm watching I love you! We'll see rate please iOS. Download app MooGPT! (⁠・⁠∀⁠・⁠)"     
        } else {
            return "I'm sorry, I don't have information on that topic."
        }
    }
}
