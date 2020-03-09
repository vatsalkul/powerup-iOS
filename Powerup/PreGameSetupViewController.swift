//
//  PreGameSetupViewController.swift
//  Powerup
//
//  Created by Vatsal Kulshreshtha on 09/03/20.
//  Copyright © 2020 Systers. All rights reserved.
//

import UIKit

class PreGameSetupViewController: UIViewController {

    let imageSource = adultImages1
    let npcImage = npcAdultImages1
    
    @IBOutlet weak var npcImageView: UIImageView!
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        npcImageView.image = npcImage[0]
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
 }
    

}
extension PreGameSetupViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return imageSource.count
       }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImagesCollectionViewCell
           cell.image.image = imageSource[indexPath.row]
           return cell
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedImage = npcImage[indexPath.item]
        npcImageView.image = selectedImage
        collectionView.reloadData()
    }
    
}
