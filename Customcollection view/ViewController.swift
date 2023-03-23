//
//  ViewController.swift
//  Customcollection view
//
//  Created by R93 on 14/02/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!
    var image = [UIImage(named:"1"),UIImage(named:"2"),UIImage(named:"3"),UIImage(named:"4"),UIImage(named:"5"),UIImage(named:"6"),UIImage(named:"7"),UIImage(named:"8"),UIImage(named:"9"),UIImage(named:"10")]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell2
        cell.img.image = image[indexPath.row]
        return cell
    }


}

