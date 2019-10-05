//
//  ViewController.swift
//  Ui
//
//  Created by Mai Abd Elmonem on 10/2/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var AppleImage: UIImageView!
    
    var imageArr = [UIImage(named: "apple"), UIImage(named: "apple-1"), UIImage(named: "user")]
    var textArr = [" is simply dummy text "," is simply text ", " is dummy text "]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      self.AppleImage.layer.cornerRadius = (self.AppleImage.frame.height)/2
     self.AppleImage.layer.masksToBounds = true
//        self.AppleImage.layer.borderWidth = 3.0;
//        self.AppleImage.layer.borderColor = [UIColor whiteColor].CGColor;
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "icv", for: indexPath) as! ImageCollectionViewCell
        cell.image.image = imageArr[indexPath.row]
        cell.label.text = textArr[indexPath.row]
        return cell
    }
    


}

