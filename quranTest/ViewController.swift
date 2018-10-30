//
//  ViewController.swift
//  quranTest
//
//  Created by mr Yacine on 10/5/18.
//  Copyright © 2018 mr Yacine. All rights reserved.
//

import UIKit

var imageArray = [String] ()
var ima = [ObjectColl] ()
var ind: IndexPath?
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var indexPage: Int!
    var imageName: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "QuranCollectionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectionCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        imageArray = ["im1","im2","im3","im4"]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func custumIndex(indexPage: Int){
        
        self.indexPage = indexPage
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //return imageArray[collectionView.tag].count
        
        return imageArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cel = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! QuranCollectionCollectionViewCell
        
            //cel.ImgSura.image = UIImage(named: imageArray[index1])
        cel.configure(with: ObjectColl(im: UIImage(named: imageArray[indexPath.item])!))
        

        return cel
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: collectionView.bounds.width , height: collectionView.bounds.height )
    }
    
    func commonInit(_ imageName: String) {
        self.imageName = imageName
    }
    

    
 
}
