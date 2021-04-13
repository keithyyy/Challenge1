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
        
//
        navigationItem.largeTitleDisplayMode = .never
        
//        code here to display share button at top right
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        if let flagToDisplay = selectedFlag {
            flagView.image = UIImage(named: flagToDisplay)
        }
        // Do any additional setup after loading the view.
    }
    
    @objc func shareTapped() {
        guard let flag = flagView.image?.pngData() else {
            print("nothing to save here")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [flag], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
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
