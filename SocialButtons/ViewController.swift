//
//  ViewController.swift
//  SocialButtons
//
//  Created by OITD on 24/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let view = CGRect(x: 0, y: 40, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(SocialButtonsView.init(frame: view))
    }


}

