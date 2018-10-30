//
//  QuranCollectionCollectionViewCell.swift
//  quranTest
//
//  Created by mr Yacine on 10/10/18.
//  Copyright © 2018 mr Yacine. All rights reserved.
//

import UIKit

class QuranCollectionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var viewQ: UIView!
    
    @IBOutlet weak var ImgSura: UIImageView!
    var kk = [ObjectColl]()
    func configure(with photo: ObjectColl) {
        ImgSura.image = photo.im
       // kk.append(ObjectColl(im: UIImage(named: imageArray[2])!))
    }
}
