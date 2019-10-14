//
//  PhotoViewController.swift
//  Ui
//
//  Created by Mai Abd Elmonem on 10/9/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    
    @IBOutlet weak var PhotoCollectioView: UICollectionView!
    var imgArray = [UIImage]()
    var passedContentOffset = IndexPath()
    var imageObject : IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PhotoCollectioView.delegate = self
        self.PhotoCollectioView.dataSource = self
        
        PhotoCollectioView.isPagingEnabled = true
        _ = imageObject!
        self.PhotoCollectioView.scrollToItem(at: imageObject!, at: UICollectionView.ScrollPosition.right, animated: false)
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PhotoCollectionViewCell
        cell.scrollableImage.image=imgArray[indexPath.row]
        cell.config()
        
        return cell
    }
    
  
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        let offset = PhotoCollectioView.contentOffset
        let width  = PhotoCollectioView.bounds.size.width
        
        let index = round(offset.x / width)
        let newOffset = CGPoint(x: index * size.width, y: offset.y)
        
        PhotoCollectioView.setContentOffset(newOffset, animated: false)
        
        coordinator.animate(alongsideTransition: { (context) in
            self.PhotoCollectioView.reloadData()
            
            self.PhotoCollectioView.setContentOffset(newOffset, animated: false)
        }, completion: nil)
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = UIScreen.main.bounds
        return CGSize(width: size.width, height: size.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
