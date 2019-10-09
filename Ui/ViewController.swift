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
    
    var imageArr = [UIImage(named: "Brad-Pitt"), UIImage(named: "Ben-Affleck"),UIImage(named: "apple"), UIImage(named: "user")]
//    var textArr = [" is simply dummy text "," is simply text ", " is dummy text "]
    
    
    
    
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
//        cell.label.text = textArr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
//        let scollImage = storyboard?.instantiateViewController(withIdentifier: "vc") as! PhotoViewController
//        let scollImage=PhotoViewController()
//        scollImage.imgArray = self.imageArr as! [UIImage]
////        scollImage.passedContentOffset = profiles[indexPath.row].file_path
//        scollImage.passedContentOffset = indexPath
//        self.navigationController?.pushViewController(scollImage, animated: true)
        
        let scollImage = self.storyboard?.instantiateViewController(withIdentifier: "vc") as! PhotoViewController
        scollImage.imageObject = indexPath
        scollImage.imgArray = self.imageArr as! [UIImage]
         self.navigationController?.pushViewController(scollImage, animated: true)
    }
    


}

