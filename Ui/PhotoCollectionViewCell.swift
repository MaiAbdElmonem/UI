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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        scrollview = UIScrollView()
        scrollview.delegate = self
        scrollview.alwaysBounceVertical = false
        scrollview.alwaysBounceHorizontal = false
        scrollview.showsVerticalScrollIndicator = true
        scrollview.flashScrollIndicators()
        
        scrollview.minimumZoomScale = 1.0
        scrollview.maximumZoomScale = 4.0
        
        let doubleTapGest = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTapScrollView(recognizer:)))
        doubleTapGest.numberOfTapsRequired = 2
        scrollview.addGestureRecognizer(doubleTapGest)
        
        self.addSubview(scrollview)
        
        scrollableImage = UIImageView()
        scrollableImage.image = UIImage(named: "user3")
        scrollview.addSubview(scrollableImage!)
        scrollableImage.contentMode = .scaleAspectFit
    }
    
}
