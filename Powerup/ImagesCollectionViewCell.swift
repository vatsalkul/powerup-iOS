//
//  ImagesCollectionViewCell.swift
//  Powerup
//
//  Created by Vatsal Kulshreshtha on 09/03/20.
//  Copyright © 2020 Systers. All rights reserved.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {
    var isPurchased = false
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var purchasedImageView: UIImageView!
    
}
