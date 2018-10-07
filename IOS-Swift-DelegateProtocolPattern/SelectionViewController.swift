//
//  SelectionViewController.swift
//  IOS-Swift-DelegateProtocolPattern
//
//  Created by Pooya on 2018-10-06.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

protocol SelectionDelegate {
    func didTapSelect(image: UIImage, name: String, description: String)
}

class SelectionViewController: UIViewController {

    var selectionDelegate : SelectionDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func appleAct(_ sender: UIButton) {
        selectionDelegate.didTapSelect(image: UIImage(named: "apple")!, name: "Apple", description: "An apple is a sweet, edible fruit produced by an apple tree.")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func orangeAction(_ sender: UIButton) {
        selectionDelegate.didTapSelect(image: UIImage(named: "orange")!, name: "Orange", description: "The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae.")
        dismiss(animated: true, completion: nil)
    }
    
}
