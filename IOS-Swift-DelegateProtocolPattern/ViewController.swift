//
//  ViewController.swift
//  IOS-Swift-DelegateProtocolPattern
//
//  Created by Pooya on 2018-10-06.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var goBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goBtn.layer.cornerRadius = goBtn.frame.size.height/2
        
    }

    @IBAction func goAct(_ sender: UIButton) {
        let SelectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionPage") as! SelectionViewController
        SelectionVC.selectionDelegate = self
        present(SelectionVC,animated: true, completion: nil)
    }
    
}

extension ViewController: SelectionDelegate {
    func didTapSelect(image: UIImage, name: String, description: String) {
        imageView.image = image
        titleView.text = name
        textView.text = description
    }
}

