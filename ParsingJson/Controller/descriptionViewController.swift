//
//  descriptionViewController.swift
//  ParsingJson
//
//  Created by Pravalika Donthineni on 12/17/18.
//  Copyright © 2018 Pravalika Donthineni. All rights reserved.
//

import UIKit

class descriptionViewController: UIViewController {
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var descriptiontext: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print(descriptiontext)
        descriptionTextView.text = descriptiontext
    }

}
