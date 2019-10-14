//
//  PhotoCollectionViewCell.swift
//  Ui
//
//  Created by Mai Abd Elmonem on 10/9/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollableImage: UIImageView!
    
   @IBOutlet weak var scrollview: UIScrollView!
    
    func config (){
        scrollview.delegate =  self
       scrollview.minimumZoomScale=1.0
        scrollview.maximumZoomScale=6.0
        scrollview.addSubview(scrollableImage)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return scrollableImage
    }
    
}
