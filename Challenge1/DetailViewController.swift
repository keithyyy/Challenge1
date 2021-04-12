//
//  DetailViewController.swift
//  Challenge1
//
//  Created by Keith Crooc on 2021-04-11.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var flagView: UIImageView!
    var selectedFlag: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = selectedFlag
        navigationItem.largeTitleDisplayMode = .never
        
        if let flagToDisplay = selectedFlag {
            flagView.image = UIImage(named: flagToDisplay)
        }
        // Do any additional setup after loading the view.
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
