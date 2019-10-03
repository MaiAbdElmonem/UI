//
//  ViewController.swift
//  Ui
//
//  Created by Mai Abd Elmonem on 10/2/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AppleImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      self.AppleImage.layer.cornerRadius = (self.AppleImage.frame.height)/2
     self.AppleImage.layer.masksToBounds = true
//        self.AppleImage.layer.borderWidth = 3.0;
//        self.AppleImage.layer.borderColor = [UIColor whiteColor].CGColor;
    }


}

