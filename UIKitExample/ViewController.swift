//
//  ViewController.swift
//  UIKitExample
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import UIKit
import CustomDynamicType

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.setFont(style: .largeTitle)
        label1.text = "There is no strife, no prejudice, no national conflict in outer space as yet."
        label1.numberOfLines = 0
        
        label2.setFont(style: .headline)
        label2.text = "Its hazards are hostile to us all."
        label2.numberOfLines = 0
        
        label3.setFont(style: .title2)
        label3.text = "Its conquest deserves the best of all mankind, and its opportunity for peaceful cooperation many never come again."
        label3.numberOfLines = 0
        
        label4.setFont(style: .body, overrideWeight: .bold)
        label4.text = "But why, some say, the moon? Why choose this as our goal?"
        label4.numberOfLines = 0
        
    }


}

