

import UIKit
import WebKit

class ViewController: UIViewController {
    
    let webView = WKWebView();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(webView)
        guard let url = URL(string: "https://wt.harvestasset.org/") else {
            return
        }
        
        webView.load(URLRequest(url: url))
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }

}

